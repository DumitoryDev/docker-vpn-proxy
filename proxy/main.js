var proxy = require("node-tcp-proxy");
var process = require("process");
var ip = require("ip");

const { Command } = require('commander');
const program = new Command();

program.version('0.0.1');

program
  .option('--listenport <value>', 'input proxy port')
  .option('--forwardport <value>', 'output proxy port')
  .option('--forwardip <value>', 'proxy ip address')

if (process.argv.length == 2) {
  console.log("Invalid arguments!");
  console.log(program.help());
  return;
}

program.parse(process.argv);

proxy.createProxy(program.listenport, program.forwardip, program.forwardport);
console.log("Start...");
console.log(ip.address() + ":" + program.listenport + " -> " + program.forwardip + ":" + program.forwardport);

process.on("uncaughtException", function (exception) {
  // handle or ignore error
  console.log("exception: ", exception);
});
