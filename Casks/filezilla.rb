cask "filezilla" do
  version "3.63.0"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl2.cdn.filezilla-project.org/client/FileZilla_3.63.0_macosx-x86.app.tar.bz2?h=8C6Wbyz2omXW21v3gEYZdA&x=1674658897"
  name "FileZilla"
  desc "FileZilla®, the free FTP solution"
  homepage "https://filezilla-project.org"

  auto_updates true

  app "FileZilla.app"

  zap trash: [
    "~/Library/Application Support/FileZilla",
  ]
end