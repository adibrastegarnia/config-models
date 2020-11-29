#!/usr/bin/env bash

go run github.com/openconfig/ygot/generator -path=yang -output_file=enterprise_1_0_0/generated.go -package_name=enterprise_1_0_0 -generate_fakeroot device-range@2020-11-18.yang device-group@2020-11-18.yang enterprise@2020-11-18.yang site@2020-11-18.yang use-case@2020-11-18.yang deployment-environment@2020-11-18.yang application@2020-11-18.yang visibility@2020-11-18.yang qos@2020-11-18.yang


sedi=(-i)
case "$(uname)" in
  Darwin*) sedi=(-i "")
esac

lf=$'\n'; sed "${sedi[@]}" -e "1s/^/\/\/ Code generated by YGOT. DO NOT EDIT.\\$lf/" enterprise_1_0_0/generated.go



