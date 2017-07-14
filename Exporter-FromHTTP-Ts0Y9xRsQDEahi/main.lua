local Project = require 'iguana.project'


function main(Data)
   local P = Project()
   P:addSharedFile("iguana.project.lua")
   P:addOtherFile("Life.json", "[1,2,3,4]");
   P:addLocalFile("blah.local.lua", "-- Blah blah Blah");
   P:main([[--This is the function called by Iguana.
function main(Data)  
   
end]])
   local Name = "Grammar"
   local Result = P:compile(Name)   
   net.http.respond{body=Result,entity_type="application/zip"}
end