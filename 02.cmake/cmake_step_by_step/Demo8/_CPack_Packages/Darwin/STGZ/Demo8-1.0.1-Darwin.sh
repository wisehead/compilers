#!/bin/sh

# Display usage
cpack_usage()
{
  cat <<EOF
Usage: $0 [options]
Options: [defaults in brackets after descriptions]
  --help            print this message
  --version         print cmake installer version
  --prefix=dir      directory in which to install
  --include-subdir  include the Demo8-1.0.1-Darwin subdirectory
  --exclude-subdir  exclude the Demo8-1.0.1-Darwin subdirectory
  --skip-license    accept license
EOF
  exit 1
}

cpack_echo_exit()
{
  echo $1
  exit 1
}

# Display version
cpack_version()
{
  echo "Demo8 Installer Version: 1.0.1, Copyright (c) Humanity"
}

# Helper function to fix windows paths.
cpack_fix_slashes ()
{
  echo "$1" | sed 's/\\/\//g'
}

interactive=TRUE
cpack_skip_license=FALSE
cpack_include_subdir=""
for a in "$@"; do
  if echo $a | grep "^--prefix=" > /dev/null 2> /dev/null; then
    cpack_prefix_dir=`echo $a | sed "s/^--prefix=//"`
    cpack_prefix_dir=`cpack_fix_slashes "${cpack_prefix_dir}"`
  fi
  if echo $a | grep "^--help" > /dev/null 2> /dev/null; then
    cpack_usage 
  fi
  if echo $a | grep "^--version" > /dev/null 2> /dev/null; then
    cpack_version 
    exit 2
  fi
  if echo $a | grep "^--include-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=TRUE
  fi
  if echo $a | grep "^--exclude-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=FALSE
  fi
  if echo $a | grep "^--skip-license" > /dev/null 2> /dev/null; then
    cpack_skip_license=TRUE
  fi
done

if [ "x${cpack_include_subdir}x" != "xx" -o "x${cpack_skip_license}x" = "xTRUEx" ]
then
  interactive=FALSE
fi

cpack_version
echo "This is a self-extracting archive."
toplevel="`pwd`"
if [ "x${cpack_prefix_dir}x" != "xx" ]
then
  toplevel="${cpack_prefix_dir}"
fi

echo "The archive will be extracted to: ${toplevel}"

if [ "x${interactive}x" = "xTRUEx" ]
then
  echo ""
  echo "If you want to stop extracting, please press <ctrl-C>."

  if [ "x${cpack_skip_license}x" != "xTRUEx" ]
  then
    more << '____cpack__here_doc____'
/*
copy right from chenhui and wisehead from NBA.
*/


____cpack__here_doc____
    echo
    echo "Do you accept the license? [yN]: "
    read line leftover
    case ${line} in
      y* | Y*)
        cpack_license_accepted=TRUE;;
      *)
        echo "License not accepted. Exiting ..."
        exit 1;;
    esac
  fi

  if [ "x${cpack_include_subdir}x" = "xx" ]
  then
    echo "By default the Demo8 will be installed in:"
    echo "  \"${toplevel}/Demo8-1.0.1-Darwin\""
    echo "Do you want to include the subdirectory Demo8-1.0.1-Darwin?"
    echo "Saying no will install in: \"${toplevel}\" [Yn]: "
    read line leftover
    cpack_include_subdir=TRUE
    case ${line} in
      n* | N*)
        cpack_include_subdir=FALSE
    esac
  fi
fi

if [ "x${cpack_include_subdir}x" = "xTRUEx" ]
then
  toplevel="${toplevel}/Demo8-1.0.1-Darwin"
  mkdir -p "${toplevel}"
fi
echo
echo "Using target directory: ${toplevel}"
echo "Extracting, please wait..."
echo ""

# take the archive portion of this file and pipe it to tar
# the NUMERIC parameter in this command should be one more
# than the number of lines in this header file
# there are tails which don't understand the "-n" argument, e.g. on SunOS
# OTOH there are tails which complain when not using the "-n" argument (e.g. GNU)
# so at first try to tail some file to see if tail fails if used with "-n"
# if so, don't use "-n"
use_new_tail_syntax="-n"
tail $use_new_tail_syntax +1 "$0" > /dev/null 2> /dev/null || use_new_tail_syntax=""

extractor="pax -r"
command -v pax > /dev/null 2> /dev/null || extractor="tar xf -"

tail $use_new_tail_syntax +151 "$0" | gunzip | (cd "${toplevel}" && ${extractor}) || cpack_echo_exit "Problem unpacking the Demo8-1.0.1-Darwin"

echo "Unpacking finished successfully"

exit 0
#-----------------------------------------------------------
#      Start of TAR.GZ file
#-----------------------------------------------------------;

� Ҭ] �[_hE��$6���-(-V����s�w�wAZ�iV7��1Mk�v�v�n�{��<U��<��/R�\|,Z���H
�$P�������lno��Vr������o��|3�����d\����!+]���<_E
Z1 ��BV�����@^(d��3�����6�\CF�Յ�zã���h��{C攪�,���p-��@(����2"/�Y>!Bg�X��2�|�6����^��t�������?��e�����y� ��i�v����_�BS�ַ�H뿐�|��������l��׷������<���B>_��wҨ ;�������w�`>�e�[� |�W�E/�!�+M�=�{�v��ᙔ�N�S��T�2��� <;4�Ԣ|�n��NH��v{�a����%;$G�K�|�"r�^��D�RC�����G�������m�ҍ���S�s!9�x���ƴnh�nT�u��(���a�y]�x����P��HL�+d��uŞ�*�u��X�q!�+TL�?<ϊRW7��(�a�]�5�A?}?89<��44����6b-���r�O�zq�C�Ɇ��q�<R�}����O�0���l\�o����>Үm��z)���5Z������?\�f?F�ϟ����sA��^8�]����#~i����3Г���Zk��ѣ� 6B/y��!�������fmM�J�xx���	���E*��d```````` ���U�p������j�ݖ��s���_�������e�N+|'/H��~	,�%q�����|S���/�|�Eԛ�W+5��L��<�&�H7i���,�x�7pu�����䤛#7H��͑{D�7yd�^S�Rn�--�|W}U�r#W兹���r�7���łtG�p���_��ض�T��������ɋϮ`����O8^���+�����ȫ���$E^FW���a���S)�A���Li)-N�j�qAI�D3�@�`Ԝ���8ש!h;�����˫�Z�X%U��0�m����v2��\�co�߱s�1�$i����5��Nd�-{?��eh|�Ư'n������������������a�!�;��{�����%�А޶�"���'�1+$��O�$q�aN�d?IZ��� 1�2US�*�Rj�3p�\� )�EX~�$;�O��O{r�\����v$}("�G�"��}3��crnJ�|OD�!P�����d�1	F�!}�к��庫������3������� ����A���w�����B6��o��o}�M��Wj[��|.�P뿘���/��[��l����뽾�������F�D����Dv�{;�N{g����Ҡ�ptӰ�jh�F��UVLN��i�j=qXC�@��߀rF�85<6�������ã��O��4�^����`�)ذ�tg�Ӱ�e��+k<r񌤌��Ö!�-�?�a2 @  