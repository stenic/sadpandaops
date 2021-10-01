#!/bin/bash

spoRelease=${SPO_RELEASE}
spoRepo=${SPO_REPO}
spoRepoPath=${SPO_REPO_PATH}
spoLoopDelay=${SPO_LOOP_DELAY:-180}

mkdir ~/.ssh
[ -f /opt/sadpanda/ssh_key ] && (cp /opt/sadpanda/ssh_key ~/.ssh/id_rsa && chmod 600 ~/.ssh/id_rsa)
ssh-keyscan github.com > ~/.ssh/known_hosts

echo "Initial sync"
rm -rf /opt/repo
git clone ${spoRepo} /opt/repo
helm upgrade --dependency-update --install ${spoRelease} /opt/repo/${spoRepoPath}

echo "Control loop"
while :
do
	sleep ${spoLoopDelay}
	(cd /opt/repo/; git reset --hard; git pull) | grep "Updating" \
		&& ( \
			helm upgrade --dependency-update --install ${spoRelease} /opt/repo/${spoRepoPath} \
			|| echo "Sync failed"
		) \
		|| echo "No sync needed"
done
