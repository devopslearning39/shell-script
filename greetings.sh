#!/bin/bash
name=""
wishes="Good morning!"


USAGE(){
    echo "USGAE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo "-n, Specify the name (Mandatory)"
    echo "-w, Specify the wishes (OPtional), default greeting is Good morning"
    echo "-h, Help or exit"
}

while getopts "n:w:h" opt; do
  case $opt in
    n) name="$OPTARG"
      ;;
    w) wishes="$OPTARG"
      ;;
    h) USAGE
      exit 0
      ;;
    \?) echo "Invalid option: -$OPTARG" >&2
      USAGE
      exit 1
      ;;
    :) echo "Option -$OPTARG requires an argument." >&2
      USAGE
      exit 1
      ;;
  esac
done

# Check if required options are set
if [ -z "$name" ] || [ -z "$wishes" ]; then
  echo "Both -n (name) and -a (wishes) options are required." >&2
  USAGE
  exit 1
fi