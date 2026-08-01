# Git LFS fixture (R-WX-02)

`asset.bin` is a 5 MB Git LFS object, not a normal blob.

The DCMS host deliberately does **not** have `git-lfs` installed. That is the
point of this fixture: a clone without LFS support fetches a ~130-byte *pointer
file* instead of the real asset, and an application that reads it gets text
beginning `version https://git-lfs.github.com/spec/v1`.

`R-WX-02` passes if DCMS either fetches the real content or says clearly that the
repository uses LFS and the content was not retrieved. Silently deploying the
pointer file as though it were the asset is the failure mode.
