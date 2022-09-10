import { exec as denoExec, OutputMode } from "https://deno.land/x/exec/mod.ts";

const exec = (command) => denoExec(command, { output: OutputMode.Capture })

console.log('Args', { args: Deno.args })

const programs = {
  tar: 'tar',
  zip: 'unzip',
  rar: 'unrar',
}
for (const key in programs) {
  programs[key] = (await exec(`which ${programs[key]}`)).output
}

console.log('Resolved apps:', programs);

