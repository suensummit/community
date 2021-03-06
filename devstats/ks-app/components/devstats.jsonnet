local env = std.extVar("__ksonnet/environments");
local params = std.extVar("__ksonnet/params").components.devstats;
local k = import "k.libsonnet";
local devstatsLib = import "devstats-parts.libsonnet";
std.prune(k.core.v1.list.new(devstatsLib.all(params, env)))
