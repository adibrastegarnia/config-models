#!/usr/bin/env bash

go run github.com/openconfig/ygot/generator -path=yang -output_file=ric_1_0_0/generated.go -package_name=ric_1_0_0 -generate_fakeroot xapp@2020-11-18.yang \


sedi=(-i)
case "$(uname)" in
  Darwin*) sedi=(-i "")
esac

lf=$'\n'; sed "${sedi[@]}" -e "1s/^/\/\/ Code generated by YGOT. DO NOT EDIT.\\$lf/" ric_1_0_0/generated.go


