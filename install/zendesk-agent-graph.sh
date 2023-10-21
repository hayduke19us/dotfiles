ok brew jenv
ok brew-tap AdoptOpenJDK/openjdk
ok brew-tap vmware-tanzu/carvel
ok cask adoptopenjdk11
ok cask adoptopenjdk15
ok brew openjdk
ok brew vendi
r

ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

jenv add  /Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
jenv add  /Library/Java/JavaVirtualMachines/adoptopenjdk-15.jdk/Contents/Home
jenv add  /Library/Java/JavaVirtualMachines/adoptopenjdk-15.jdk/Contents/Home
