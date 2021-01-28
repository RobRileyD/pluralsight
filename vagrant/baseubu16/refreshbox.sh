# update source box
vagrant box update
# copy to local repo
vagrant up --provision
# then package up, delete packaging copy and VM that spawned it
vagrant package --output baseubu16.box && \
    vagrant box add --force baseubu16 baseubu16.box && \
    rm -f baseubu16.box && \
    vagrant destroy -f
# clean up local copy
rm -rf .vagrant
