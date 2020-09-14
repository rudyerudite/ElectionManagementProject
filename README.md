# Election Management Project

An election management system implemented as a part of course team project. 

Attributes and Constraints

PID: It’s the polling booth id which identifies the polling booth in various wards. A polling booth can have a unique ID. (unique and not null)
PNAME: Name of the polling booth. A polling booth will have only one name. (not null)
WARD_NO: Unique ID to identify wards in a district/town. (not null)
LANDMARK: A place to identify the polling booth easily. (no constraint)
AREACODE: The unique pin code/areacode of a region. (not null and unique)
DOP:Date of polling for the election. An election can take place on only one day in an area. (not null)
START_TIME: The time when the polling starts. (not null)
END_TIME: The time when the polling ends. (not null)
OF_ID: The office ID which uniquely identifies the officers. (not null)
DESIGNATION: The designation or the type of polling booth officers. (not null and may not be unique)
O_NAME: The name of the officers. An officer can have only one name. The same name maybe for different officers. (not null)
ELEC_NO: The elector ID which uniquely identifies the electors. (unique and not null)
E_NAME: The name of the electors. The same name maybe for different electors. (not null)
GENDER:  Identifies the gender of the elector
ADDRESS: The address of the elector. One elector has only one address. Different electors may belong to the same address or thee same area. (not null)
DOB: The date of birth of the elector. Different electors may have the same DOB and each one has only one DOB. (not null)
CID: The candidate ID which uniquely identifies the candidates. No two candidates will not have the same CID. (not null and unique)
PARTY_NO: The party ID to uniquely identify the party. (not null and unique)
PARTY_NAME: The name of the party. A party will have only unique name. (not null and unique)
POLLED: Holds the boolean value, Yes or No to indicate whether the elector has polled on the polling booth or not. (not null)
