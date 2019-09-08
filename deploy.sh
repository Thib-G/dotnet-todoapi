dotnet publish -c Release && \
scp -P 2222 -r ./bin/Release/netcoreapp2.2/publish thib@dev.kediss.eu:~/tmp/dotnet-api.kediss.eu && \
ssh -p 2222 thib@dev.kediss.eu "chmod -R u+rw-x,go+r-wx,ugo+X ~/tmp/dotnet-api.kediss.eu/ \
  && rm -r -f /srv/dotnet-api.kediss.eu/* \
  && mv ~/tmp/dotnet-api.kediss.eu/* /srv/dotnet-api.kediss.eu \
  && rm -r ~/tmp/dotnet-api.kediss.eu \
  && sudo service kestrel-dotnet-api.kediss.eu restart \
  && exit"
