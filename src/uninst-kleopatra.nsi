# uninst-kleopatra.nsi - Installer snippet for kleopatra.    -*- coding: latin-1; -*-
# Copyright (C) 2005, 2007, 2008 g10 Code GmbH
# 
# This file is part of GPG4Win.
# 
# GPG4Win is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# GPG4Win is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA


!ifdef prefix
!undef prefix
!endif
!define prefix ${ipdir}/kleopatra-${gpg4win_pkg_kleopatra_version}


; Uninstaller section.
Section "-un.kleopatra"
!ifdef SOURCES
  Push "${gpg4win_pkg_kleopatra_src}"
  Call un.SourceDelete
!else

  # FIXME: See inst-kleopatra.nsi
  Delete "$INSTDIR\bin\kleopatra.exe"
  RMDir "$INSTDIR\bin"
  Delete "$INSTDIR\kleopatra.exe"

  Delete "$INSTDIR\share\kde4\services\kleopatra_config_smimevalidation.desktop"
  Delete "$INSTDIR\share\kde4\services\kleopatra_config_dnorder.desktop"
  Delete "$INSTDIR\share\kde4\services\kleopatra_config_dirserv.desktop"
  Delete "$INSTDIR\share\kde4\services\kleopatra_config_appear.desktop"
  Delete "$INSTDIR\share\kde4\services\kleopatra_signencryptfolders.desktop"
  Delete "$INSTDIR\share\kde4\services\kleopatra_decryptverifyfolders.desktop"
  Delete "$INSTDIR\share\kde4\services\kleopatra_signencryptfiles.desktop"
  Delete "$INSTDIR\share\kde4\services\kleopatra_decryptverifyfiles.desktop"

  Delete "$INSTDIR\kcm_kleopatra.dll"
  Delete "$INSTDIR\libkleo.dll"
  Delete "$INSTDIR\kgpgconf.exe"
  Delete "$INSTDIR\kwatchgnupg.exe"
  Delete "$INSTDIR\libkleopatraclientcore.dll"
  Delete "$INSTDIR\libkleopatraclientgui.dll"

#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\1.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\10.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\2.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\3.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\4.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\5.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\6.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\7.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\8.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\9.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\artistic-license.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\block_title_bottom.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\block_title_mid.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\block_title_top.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\bottom-left.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\bottom-middle.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\bottom-right.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\bsd-license.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\doxygen.css"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\fdl-license"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\fdl-license.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\footer.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\gpl-license"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\gpl-license.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\kde-default.css"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\kde_logo_bg.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\lgpl-license"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\lgpl-license.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\qpl-license.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\tabs.css"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\top-kde.jpg"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\top-left.jpg"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\top-left.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\top-middle.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\top-right.jpg"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\top-right.png"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\top.jpg"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\common\x11-license.html"

  RMDir "$INSTDIR\share\doc\HTML\en\kleopatra\common"

  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\admin-key-filters.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\admin.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\commandline-options.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\configuration-appearance.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\configuration-dn-order.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\configuration.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\credits-and-license.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\favicon.ico"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\fdl-notice.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\functions-keylist-management.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\functions-newkey.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\functions-search.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\functions.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\header.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\index.cache"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\index.cache.bz2"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\index.docbook"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\index.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\introduction.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\mainfooter.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\mainheader.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menu.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menucertificates.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menucrls.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menuhelp.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menusettings.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menutools.html"
  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\xml.dcl"

  RMDir "$INSTDIR\share\doc\HTML\en\kleopatra"
  RMDir "$INSTDIR\share\doc\HTML\en"
  RMDir "$INSTDIR\share\doc\HTML"
  RMDir "$INSTDIR\share\doc"

  Delete "$INSTDIR\share\icons\oxygen\scalable\apps\kleopatra.svgz"
  Delete "$INSTDIR\share\icons\oxygen\64x64\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\oxygen\48x48\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\oxygen\32x32\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\oxygen\22x22\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\oxygen\16x16\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\oxygen\128x128\apps\kleopatra.png"
  Delete "$INSTDIR\share\config\libkleopatrarc"
  Delete "$INSTDIR\share\apps\libkleopatra\pics\key_unknown.png"
  Delete "$INSTDIR\share\apps\libkleopatra\pics\key_ok.png"
  Delete "$INSTDIR\share\apps\libkleopatra\pics\key_bad.png"
  Delete "$INSTDIR\share\apps\libkleopatra\pics\key.png"
  Delete "$INSTDIR\share\apps\libkleopatra\pics\chiasmus_chi.png"
  Delete "$INSTDIR\share\apps\kwatchgnupg\pics\kwatchgnupg2.png"
  Delete "$INSTDIR\share\apps\kwatchgnupg\pics\kwatchgnupg.png"
  Delete "$INSTDIR\share\apps\kwatchgnupg\kwatchgnupgui.rc"
  Delete "$INSTDIR\share\apps\kleopatra\pics\kleopatra_wizard.svgz"
  Delete "$INSTDIR\share\apps\kleopatra\pics\kleopatra_wizard.png"
  Delete "$INSTDIR\share\apps\kleopatra\pics\kleopatra_splashscreen.svgz"
  Delete "$INSTDIR\share\apps\kleopatra\pics\kleopatra_splashscreen.png"
  Delete "$INSTDIR\share\apps\kleopatra\kleopatra.rc"
  Delete "$INSTDIR\share\applications\kde4\kleopatra_import.desktop"

  RMDir "$INSTDIR\share\locale\de\LC_MESSAGES"
  RMDir "$INSTDIR\share\locale\de"
  RMDir "$INSTDIR\share\locale"
  RMDir "$INSTDIR\share\icons\oxygen\scalable\apps"
  RMDir "$INSTDIR\share\icons\oxygen\scalable"
  RMDir "$INSTDIR\share\icons\oxygen\64x64\apps"
  RMDir "$INSTDIR\share\icons\oxygen\64x64"
  RMDir "$INSTDIR\share\icons\oxygen\48x48\apps"
  RMDir "$INSTDIR\share\icons\oxygen\48x48"
  RMDir "$INSTDIR\share\icons\oxygen\32x32\apps"
  RMDir "$INSTDIR\share\icons\oxygen\32x32"
  RMDir "$INSTDIR\share\icons\oxygen\22x22\apps"
  RMDir "$INSTDIR\share\icons\oxygen\22x22"
  RMDir "$INSTDIR\share\icons\oxygen\16x16\apps"
  RMDir "$INSTDIR\share\icons\oxygen\16x16"
  RMDir "$INSTDIR\share\icons\oxygen\128x128\apps"
  RMDir "$INSTDIR\share\icons\oxygen\128x128"
  RMDir "$INSTDIR\share\icons\oxygen"
  RMDir "$INSTDIR\share\icons"
  RMDir "$INSTDIR\share\config"
  RMDir "$INSTDIR\share\apps\libkleopatra\pics"
  RMDir "$INSTDIR\share\apps\libkleopatra"
  RMDir "$INSTDIR\share\apps\kleopatra\pics"
  RMDir "$INSTDIR\share\apps\kleopatra"
  RMDir "$INSTDIR\share\apps\kwatchgnupg\pics"
  RMDir "$INSTDIR\share\apps\kwatchgnupg"
  RMDir "$INSTDIR\share\apps"
  RMDir "$INSTDIR\share\applications\kde4"
  RMDir "$INSTDIR\share\applications"
  RMDir "$INSTDIR\share"
  RMDir "$INSTDIR\lib\kde4"
  RMDir "$INSTDIR"

!endif
SectionEnd
