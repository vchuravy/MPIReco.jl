using MPIReco
using Winston

SFs = ["SF_MP01", "SF_MP02", "SF_MP03", "SF_MP04"]

#figure(14)
#clf()

for (l,SF) in enumerate(SFs)
  #subplot(2,2,l)
  bSF = MPIFile(SF)
  a = findCenterOfDfFov(bSF)
  @info "center position" a
  S = getSF(bSF,2,0,0,2);
  imagesc(abs.(S)[:,:,1]);
  plot([a[2]-1],[a[1]-1],"gx",lw=4)
end

#figure(15)
#clf()

for (l,SF) in enumerate(SFs)
  #subplot(2,2,l)
  bSF = MPIFile(SF)
  a = findCenterOfDfFov(bSF)
  @info "center position" a
  S = getSF(bSF,5,6,0,1);
  imagesc(abs.(S)[:,:,1]);
  plot([a[2]-1],[a[1]-1],"gx",lw=4)
end
