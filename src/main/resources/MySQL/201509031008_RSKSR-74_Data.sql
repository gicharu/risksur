INSERT INTO `programpages` (`pageId`, `pageName`, `path`, `parentId`, `menuOrder`, `target`, `active`, `comments`) VALUES
  (18, 'Home', 'system/index', 0, 1, NULL, 1, NULL);

INSERT INTO `pages_has_roles` (`pageId`, `roleId`) VALUES
  (18, 1),
  (18, 2),
  (18, 3);

INSERT INTO `roles_has_permissions` (`permissions_id`, `roles_id`) VALUES
  (71, 1),
  (71, 2),
  (71, 3),
  (93, 1),
  (93, 2),
  (93, 3),
  (94, 1),
  (94, 2),
  (94, 3),
  (95, 1),
  (95, 2),
  (95, 3),
  (96, 1),
  (96, 2),
  (96, 3),
  (97, 1),
  (97, 2),
  (98, 1),
  (98, 2),
  (100, 1),
  (100, 2),
  (101, 1),
  (101, 2),
  (102, 1),
  (102, 2),
  (102, 3),
  (103, 1),
  (103, 2),
  (104, 1),
  (104, 2),
  (105, 1),
  (105, 2),
  (106, 1),
  (106, 2);


UPDATE `permissions`
SET `id` = 71,`name` = 'actionIndex',`description` = 'C/A to display intro page',`controller` = 'system',`action` = 'index',`bizrule` = '' WHERE `permissions`.`id` = 71;

INSERT IGNORE INTO `permissions` (`id`, `name`, `description`, `controller`, `action`, `bizrule`) VALUES
  (88, 'actionGetQuestionGroups', 'C/A to rerieve question groups', 'adminattributerelevance', 'getQuestionGroups', '');


TRUNCATE TABLE `evaCriteria`;
--
-- Dumping data for table `evaCriteria`
--

INSERT INTO `evaCriteria` (`criteriaId`, `name`) VALUES
  (1, 'Effectiveness'),
  (2, 'Cost'),
  (3, 'Monetary benefit'),
  (4, 'Non monetary benefit'),
  (5, 'Function'),
  (6, 'Strenth and weaknesses');

--
-- Truncate table before insert `evaMethods`
--

TRUNCATE TABLE `evaMethods`;
--
-- Dumping data for table `evaMethods`
--

INSERT INTO `evaMethods` (`evaMethodId`, `name`) VALUES
  (1, 'Effectiveness attribute assessment'),
  (2, 'Least cost assessment'),
  (3, 'Cost benefit analysis'),
  (4, 'Cost effectiveness analysis'),
  (5, 'Functional assessment'),
  (6, 'Process assessment'),
  (7, 'Structure assessment');

--
-- Truncate table before insert `evaQuestion_has_criteria_and_method`
--

TRUNCATE TABLE `evaQuestion_has_criteria_and_method`;
--
-- Dumping data for table `evaQuestion_has_criteria_and_method`
--

INSERT INTO `evaQuestion_has_criteria_and_method` (`questionId`, `criteriaId`, `methodId`) VALUES
  (1, 1, 1),
  (2, 1, 2),
  (2, 2, 2),
  (3, 1, 1),
  (4, 1, 1),
  (4, 1, 5),
  (4, 5, 1),
  (4, 5, 5),
  (5, 1, 3),
  (5, 2, 3),
  (5, 3, 3),
  (6, 1, 4),
  (6, 2, 4),
  (6, 4, 4),
  (7, 1, 3),
  (7, 1, 4),
  (7, 2, 3),
  (7, 2, 4),
  (7, 3, 3),
  (7, 3, 4),
  (7, 4, 3),
  (7, 4, 4),
  (8, 1, 3),
  (8, 2, 3),
  (8, 3, 3),
  (9, 1, 3),
  (9, 1, 4),
  (9, 2, 3),
  (9, 2, 4),
  (9, 3, 3),
  (9, 3, 4),
  (9, 4, 3),
  (9, 4, 4),
  (10, 1, 3),
  (10, 2, 4),
  (10, 4, 4),
  (11, 5, 5),
  (12, 1, 2),
  (12, 2, 2),
  (13, 6, 5),
  (13, 6, 6),
  (13, 6, 7),
  (14, 1, 3),
  (14, 2, 3),
  (14, 3, 3),
  (15, 1, 4),
  (15, 2, 4),
  (15, 4, 4),
  (18, 3, 3),
  (18, 3, 4),
  (18, 4, 3),
  (18, 4, 4),
  (43, 1, 1);

INSERT INTO `permissions` (
  `name`,
  `description`,
  `controller`,
  `action`
)
VALUES
  (
    'actionSelectComponents',
    'C/A to select components for evaluation',
    'evaluation',
    'selectComponents'
  ),
  ('actionUpdateEvacontext', 'C/A to update the evaluation context', 'evaluation', 'updateEvaContext'),
  ('actionPerformEvaluation', 'C/A to perform the evaluation', 'evaluation', 'performEvaluation'),
  ('actionReport', 'C/A to instruct on how to report evaluation', 'evaluation', 'report'),
  ('actionIndex', 'C/A to view evaluation assessment methods', 'adminattributesassessmentmethods', 'index'),
  ('actionCreate', 'C/A to add new evaluation assessment methods', 'adminattributesassessmentmethods', 'create'),
  ('actionUpdate', 'C/A to update evaluation assessment methods', 'adminattributesassessmentmethods', 'update'),
  ('actionDelete', 'C/A to delete evaluation assessment methods', 'adminattributesassessmentmethods', 'delete'),
  ('actionSelectEconEvaMethods', 'C/A to select economic evaluation methods', 'evaluation', 'selectEconEvaMethods'),
  ('actionCreate', 'C/A to add new economic method', 'admineconomicmethods', 'create'),
  ('actionIndex', 'C/A to list economic methods', 'admineconomicmethods', 'index'),
  ('actionUpdate', 'C/A to update economic methods', 'admineconomicmethods', 'update'),
  ('actionDelete', 'C/A to delete economic methods', 'admineconomicmethods', 'delete');
TRUNCATE TABLE `docPages`;
--
-- Dumping data for table `docPages`
--

INSERT INTO `docPages` (`docId`, `docName`, `docData`) VALUES
  (1, 'evaPage', 0x3c703e0a093c7374726f6e673e4c6f3c7370616e207374796c653d22636f6c6f723a7267622833362c36342c3937293b223e72656d20497073756d2069732073696d706c792064756d6578743c2f7370616e3e206f6620746865207072696e74696e67203c2f7374726f6e673e0a3c2f703e3c703e0a093c696d67207372633d222f7269736b7375722f696d616765732f637573746f6d496d61676555706c6f61642f32303839643036623137653264653338306266303762633664633566346437392e6a70672220616c743d2232303839643036623137653264653338306266303762633664633566346437392e6a706722202f3e3c2f703e3c703e0a093c656d3e616e3c7370616e207374796c653d226261636b67726f756e642d636f6c6f723a726762283231372c3135302c313438293b223e64207479706573657474696e6720696e6475737472792e204c6f72656d204970733c2f7370616e3e756d20686173206265656e2074686520696e6475737472792773203c2f656d3e0a3c2f703e3c6f6c3e3c6c693e7374616e646172642064756d6d79207465787420657665722073696e636520746865203c656d3e31353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66203c2f656d3e3c2f6c693e0a3c2f6f6c3e3c703e0a093c64656c3e7479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e20497420686173207375727669766564206e6f74206f6e6c7920666976652063656e7475726965732c203c2f64656c3e0a3c2f703e3c703e0a0962757420616c736f20746865206c65617020696e746f20656c656374726f6e69630a3c2f703e3c68323e207479706573657474696e672c2072656d61696e696e6720657373656e7469616c6c7920756e6368616e67652e203c2f68323e3c626c6f636b71756f74653e0a0949742077617320706f70756c61726973656420696e2074686520313936307320776974680a3c2f626c6f636b71756f74653e3c703e0a097468652072656c65617365206f66204c657472617365742073686565747320636f6e7461696e696e67204c6f72656d20497073756d2070617373616765732c20616e64206d6f726520726563656e746c792077697468206465736b746f70207075626c697368696e6720736f667477617265206c696b6520416c64757320506167654d616b657220696e636c7564696e672076657273696f6e73206f66204c6f72656d20497073756d2e0a3c2f703e),
  (2, 'evaConcepts', 0x25334368312533454c6f72656d253230697073756d253343627225334525304125334325324668312533452530412533436f6c2533452530412530392533436c692533454c6f72656d253230697073756d253230646f6c6f72253230736974253230616d6574253243253230636f6e736563746574757225323061646970697363696e67253230656c69742e2532304d617572697325323076697461652532306d69253230736f6c6c696369747564696e25323075726e61253230696d70657264696574253230696d706572646965742e253230446f6e65632532306e756c6c6125323070757275732532432532306c6163696e69612532306163253230626962656e64756d2532306e6f6e25324325323072757472756d2532306e656325323065726f732e253230416c697175616d2532306125323074656c6c75732532306d657475732e25323051756973717565253230736564253230706f737565726525323076656c69742e253230437572616269747572253230706f72746125323073656d253230612532306d6f6c65737469652532307472697374697175652e253230566976616d75732532306964253230616363756d73616e253230646f6c6f722e253230566573746962756c756d253230657569736d6f64253230616e74652532306575253230656c656d656e74756d2532306d6f6c65737469652e2532304d6f726269253230616c69717565742532307072657469756d253230697073756d25323069642532306665726d656e74756d2e253230496e2532307375736369706974253230746f72746f7225323074696e636964756e742532306469616d2532306c6163696e69612532307363656c657269737175652e2533432532466c692533452530412533432532466f6c253345253041253343702532307374796c65253344253232746578742d616c69676e2533412532306a757374696679253342253230666f6e742d73697a65253341253230313170782533422532306c696e652d686569676874253341253230313470782533422532306d617267696e2533412532303070782532303070782532303134707825334225323070616464696e67253341253230307078253342253230636f6c6f722533412532307267622830253243253230302532432532303029253342253230666f6e742d66616d696c79253341253230417269616c25324325323048656c76657469636125324325323073616e73253342253230666f6e742d7374796c652533412532306e6f726d616c253342253230666f6e742d76617269616e742533412532306e6f726d616c253342253230666f6e742d7765696768742533412532306e6f726d616c2533422532306c65747465722d73706163696e672533412532306e6f726d616c2533422532306f727068616e732533412532306175746f253342253230746578742d696e64656e74253341253230307078253342253230746578742d7472616e73666f726d2533412532306e6f6e6525334225323077686974652d73706163652533412532306e6f726d616c2533422532307769646f77732533412532306175746f253342253230776f72642d73706163696e672533412532303070782533422532302d7765626b69742d746578742d7374726f6b652d776964746825334125323030707825334225323225334525304125303953656425323061632532307475727069732532307175616d2e2532304e616d25323070686172657472612532306d65747573253230696e2532307175616d25323070686172657472612532432532306575253230756c747269636965732532306c6f72656d253230696163756c69732e25323050656c6c656e746573717565253230766573746962756c756d25323061726375253230717569732532306d65747573253230636f6d6d6f646f2532432532306c6f626f7274697325323068656e64726572697425323074656c6c7573253230696e74657264756d2e253230566573746962756c756d253230706f72747469746f7225323073616769747469732532306e69626825324325323065676574253230736f6c6c696369747564696e2532306475692532306c616f7265657425323076656c2e253230496e2532307072657469756d2532306469616d2532307574253230657261742532307661726975732532306c6163696e69612e2532304d6175726973253230706f72747469746f7225323076656c25323073656d25323076697461652532306f726e6172652e2532304e756c6c616d25323074656d7075732532307269737573253230736974253230616d657425323070656c6c656e746573717565253230656765737461732e2532304d616563656e6173253230636f6e73656374657475722532432532306a7573746f253230657525323065676573746173253230766976657272612532432532306e756c6c612532306c61637573253230696e74657264756d2532306c696265726f253243253230612532306f726e6172652532306c6967756c612532306d6173736125323065676574253230746f72746f722e25323050726f696e253230756c74726963696573253230766573746962756c756d2532306c61637573253230736974253230616d657425323070686172657472612e253230467573636525323065752532306e697369253230756c747269636573253243253230656c656966656e6425323076656c6974253230696e253243253230617563746f72253230656e696d2e25304125334325324670253345253041253343702532307374796c65253344253232746578742d616c69676e2533412532306a757374696679253342253230666f6e742d73697a65253341253230313170782533422532306c696e652d686569676874253341253230313470782533422532306d617267696e2533412532303070782532303070782532303134707825334225323070616464696e67253341253230307078253342253230636f6c6f722533412532307267622830253243253230302532432532303029253342253230666f6e742d66616d696c79253341253230417269616c25324325323048656c76657469636125324325323073616e73253342253230666f6e742d7374796c652533412532306e6f726d616c253342253230666f6e742d76617269616e742533412532306e6f726d616c253342253230666f6e742d7765696768742533412532306e6f726d616c2533422532306c65747465722d73706163696e672533412532306e6f726d616c2533422532306f727068616e732533412532306175746f253342253230746578742d696e64656e74253341253230307078253342253230746578742d7472616e73666f726d2533412532306e6f6e6525334225323077686974652d73706163652533412532306e6f726d616c2533422532307769646f77732533412532306175746f253342253230776f72642d73706163696e672533412532303070782533422532302d7765626b69742d746578742d7374726f6b652d7769647468253341253230307078253342253232253345253041253039253343656d25334553757370656e64697373652532306a7573746f2532306d69253243253230736f6c6c696369747564696e2532307365642532306d692532306574253243253230656c656d656e74756d25323068656e6472657269742532306c6f72656d2e253230496e2532306c696265726f2532306e756c6c6125324325323073757363697069742532306e6563253230706c61636572617425323076656c253243253230766f6c7574706174253230696e2532306573742e2532304675736365253230636f6e64696d656e74756d25323074696e636964756e7425323072697375732e25323050726f696e25323076656c253230766f6c7574706174253230656e696d2e253230566976616d7573253230656765742532306f726e61726525323076656c69742532432532307574253230706f72747469746f7225323070757275732e2532305365642532306665726d656e74756d2532306c696265726f25323066656c697325324325323065676574253230766f6c757470617425323075726e61253230636f6d6d6f646f253230717569732e25323050656c6c656e7465737175652532306861626974616e742532306d6f72626925323074726973746971756525323073656e656374757325323065742532306e6574757325323065742532306d616c65737561646125323066616d65732532306163253230747572706973253230656765737461732e2532305072616573656e742532306e65632532306a7573746f25323061253230656e696d253230616363756d73616e25323072757472756d2e253230566573746962756c756d253230656765737461732532306f7263692532306e65632532307175616d2532306d6178696d757325323074696e636964756e742e2532304d616563656e617325323065752532306469616d2532306661756369627573253230657261742532307068617265747261253230696e74657264756d2e253343253246656d253345253041253343253246702533452530412533436835253345437572616269747572253230717569732532306665726d656e74756d25323072697375732e253230446f6e656325323067726176696461253230616325323065726f7325323071756973253230626962656e64756d2e25323050726f696e253230657525323074656d7075732532306469616d2532432532306174253230747269737469717565253230697073756d2e25323053757370656e646973736525323065742532306c61637573253230756c6c616d636f72706572253243253230636f6e76616c6c69732532307175616d253230736974253230616d6574253243253230616363756d73616e2532306e657175652e25323043726173253230617563746f7225323065726f732532306d61757269732532432532306574253230706861726574726125323065726174253230616c6971756574253230717569732e2532304e756c6c616d25323064696374756d25323076656e656e617469732532306d657475732532432532306125323076697665727261253230726973757325323074656d706f7225323076697461652e253230437572616269747572253230706c6163657261742532306c6967756c612532306c6f626f7274697325323073617069656e25323072757472756d2532432532306575253230636f6e76616c6c69732532306d617373612532306c6f626f727469732e253230496e746567657225323066617563696275732532306578253230696e25323061756775652532306d616c6573756164612532432532306d6174746973253230756c6c616d636f727065722532306f7263692532306d6178696d75732e2532304e616d25323065742532306175677565253230717569732532306e6571756525323074656d7075732532307472697374697175652e2533432532466835253345253041253343702532307374796c65253344253232746578742d616c69676e2533412532306a757374696679253342253230666f6e742d73697a65253341253230313170782533422532306c696e652d686569676874253341253230313470782533422532306d617267696e2533412532303070782532303070782532303134707825334225323070616464696e67253341253230307078253342253230636f6c6f722533412532307267622830253243253230302532432532303029253342253230666f6e742d66616d696c79253341253230417269616c25324325323048656c76657469636125324325323073616e73253342253230666f6e742d7374796c652533412532306e6f726d616c253342253230666f6e742d76617269616e742533412532306e6f726d616c253342253230666f6e742d7765696768742533412532306e6f726d616c2533422532306c65747465722d73706163696e672533412532306e6f726d616c2533422532306f727068616e732533412532306175746f253342253230746578742d696e64656e74253341253230307078253342253230746578742d7472616e73666f726d2533412532306e6f6e6525334225323077686974652d73706163652533412532306e6f726d616c2533422532307769646f77732533412532306175746f253342253230776f72642d73706163696e672533412532303070782533422532302d7765626b69742d746578742d7374726f6b652d77696474682533412532303070782533422532322533452530412530394e756c6c616d2532306e65632532306f7263692532306e6563253230657374253230736f6c6c696369747564696e25323074696e636964756e74253230656765742532307365642532306d692e253230416c697175616d253230736f6c6c696369747564696e2532306e697369253230657525323074656c6c7573253230747269737469717565253243253230736974253230616d65742532306469676e697373696d253230746f72746f72253230626c616e6469742e2532304675736365253230706f7274612532306f64696f253230696e253230696163756c697325323074656d706f722e25323053656425323065752532306c61637573253230657425323073656d253230666163696c69736973253230636f6e6775652e2532304e756c6c6125323066696e696275732532306d6f6c6c69732532306a7573746f253230657425323074696e636964756e742e253230416c697175616d253230757425323076756c707574617465253230657261742e2532304375726162697475722532306c616f72656574253230656c6974253230646f6c6f722e2532304d61757269732532306469676e697373696d25323076697461652532306c6967756c61253230717569732532306d6178696d75732e2532304d6175726973253230636f6e7365637465747572253230736974253230616d6574253230656e696d25323065742532306469676e697373696d2e253230457469616d2532306d692532306e756e6325324325323076756c707574617465253230617425323076756c707574617465253230612532432532307375736369706974253230696e2532306a7573746f2e25323043726173253230646f6c6f722532306c656f2532432532306d6178696d757325323066696e696275732532306469616d2532306e6f6e2532432532306d6f6c6c697325323072686f6e63757325323061756775652e25304125334325324670253345),
  (3, 'survIndex', 0x3c703e3c7374726f6e673e53797374656d20496e74726f64756374696f6e2050616765733c2f7374726f6e673e3c6272202f3e3c2f703e3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e3c6272202f3e3c6272202f3e4475697320617574656d2076656c2065756d2069726975726520646f6c6f7220696e2068656e64726572697420696e2076756c7075746174652076656c69742065737365206d6f6c657374696520636f6e7365717561742c2076656c20696c6c756d20646f6c6f72652065752066657567696174206e756c6c6120666163696c69736973206174207665726f2065726f7320657420616363756d73616e20657420697573746f206f64696f206469676e697373696d2071756920626c616e646974207072616573656e74206c7570746174756d207a7a72696c2064656c656e6974206175677565206475697320646f6c6f72652074652066657567616974206e756c6c6120666163696c6973692e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e3c6272202f3e3c6272202f3e5574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e204475697320617574656d2076656c2065756d2069726975726520646f6c6f7220696e2068656e64726572697420696e2076756c7075746174652076656c69742065737365206d6f6c657374696520636f6e7365717561742c2076656c20696c6c756d20646f6c6f72652065752066657567696174206e756c6c6120666163696c69736973206174207665726f2065726f7320657420616363756d73616e20657420697573746f206f64696f206469676e697373696d2071756920626c616e646974207072616573656e74206c7570746174756d207a7a72696c2064656c656e6974206175677565206475697320646f6c6f72652074652066657567616974206e756c6c6120666163696c6973693d2e3c2f703e),
  (4, 'survIntro', 0x3c703e3c7374726f6e673e5249534b53555220496e726f64756374696f6e205061676573733c2f7374726f6e673e3c2f703e3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e3c6272202f3e3c6272202f3e4475697320617574656d2076656c2065756d2069726975726520646f6c6f7220696e2068656e64726572697420696e2076756c7075746174652076656c69742065737365206d6f6c657374696520636f6e7365717561742c2076656c20696c6c756d20646f6c6f72652065752066657567696174206e756c6c6120666163696c69736973206174207665726f2065726f7320657420616363756d73616e20657420697573746f206f64696f206469676e697373696d2071756920626c616e646974207072616573656e74206c7570746174756d207a7a72696c2064656c656e6974206175677565206475697320646f6c6f72652074652066657567616974206e756c6c6120666163696c6973692e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e3c6272202f3e3c6272202f3e5574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e204475697320617574656d2076656c2065756d2069726975726520646f6c6f7220696e2068656e64726572697420696e2076756c7075746174652076656c69742065737365206d6f6c657374696520636f6e7365717561742c2076656c20696c6c756d20646f6c6f72652065752066657567696174206e756c6c6120666163696c69736973206174207665726f2065726f7320657420616363756d73616e20657420697573746f206f64696f206469676e697373696d2071756920626c616e646974207072616573656e74206c7570746174756d207a7a72696c2064656c656e6974206175677565206475697320646f6c6f72652074652066657567616974206e756c6c6120666163696c6973692e3c6272202f3e3c6272202f3e4e616d206c696265722074656d706f722063756d20736f6c757461206e6f62697320656c656966656e64206f7074696f6e20636f6e677565206e6968696c20696d7065726469657420646f6d696e672069642071756f64206d617a696d20706c61636572617420666163657220706f7373696d20617373756d2e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747565722061646970697363696e6720656c69742c20736564206469616d206e6f6e756d6d79206e69626820657569736d6f642074696e636964756e74207574206c616f7265657420646f6c6f7265206d61676e6120616c697175616d206572617420766f6c75747061742e205574207769736920656e696d206164206d696e696d2076656e69616d2c2071756973206e6f73747275642065786572636920746174696f6e20756c6c616d636f72706572207375736369706974206c6f626f72746973206e69736c20757420616c697175697020657820656120636f6d6d6f646f20636f6e7365717561742e3c6272202f3e3c6272202f3e4475697320617574656d2076656c2065756d2069726975726520646f6c6f7220696e2068656e64726572697420696e2076756c7075746174652076656c69742065737365206d6f6c657374696520636f6e7365717561742c2076656c20696c6c756d20646f6c6f72652065752066657567696174206e756c6c6120666163696c697369732e3c6272202f3e3c2f703e),
  (5, 'desIndex', 0x3c703e44657369676e20546f6f6c20496e74726f64756374696f6e3c2f703e),
  (6, 'evaQuestion', 0x3c703e4576616c756174696f6e205175657374696f6e20546578743c2f703e3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e637475733c6272202f3e3c2f703e3c703e3c6272202f3e3c2f703e),
  (7, 'evaAttributes', 0x3c703e54686520617474726962757465732074686174206172652074686f7567687420746f2062652072656c6576616e7420666f722020796f7572206576616c756174696f6e207175657374696f6e20616e64207375727665696c6c616e6365206f626a65637469766520617265206c697374656420696e20746865207461626c652062656c6f7720e2809320646563696465207768657468657220796f75207769736820746f20696e636c7564652065616368206f66207468652061747472696275746573206c697374656420696e20796f7572206576616c756174696f6e206261736564206f6e207468652020696e666f726d6174696f6e2070726f766964656420696e20746865207461626c6520616e6420666f722065616368206f6e65207468617420796f75207769736820746f20696e636c75646520636c69636b206f6e2074686520627574746f6e20746f20636f6d706c65746520746865206173736573736d656e7420666f726d20746f206d616b6520612066696e616c206465636973696f6e2061626f7574207768657468657220796f75206172652061626c6520746f20696e636c75646520746869732061747472696275746520616e642073656c65637420746865206173736573736d656e74206d6574686f64206261736564206f6e2074686520617661696c6162696c697479206f66206461746120616e64206578706572746973652e3c2f703e),
  (8, 'evaAttributesList', 0x3c703e4576616c756174696f6e206174747269627574657320626c6120626c6120626c613c2f703e),
  (9, 'selectComponents', 0x3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e736574657475722073616469707363696e6720656c6974722c20736564206469616d206e6f6e756d79206569726d6f642074656d706f7220696e766964756e74207574206c61626f726520657420646f6c6f7265206d61676e6120616c69717579616d20657261742c20736564206469616d20766f6c75707475612e204174207665726f20656f73206574206163637573616d206574206a7573746f2064756f20646f6c6f72657320657420656120726562756d2e205374657420636c697461206b6173642067756265726772656e2c206e6f207365612074616b696d6174612073616e6374757320657374204c6f72656d20697073756d20646f6c6f722073697420616d65742e203c2f703e),
  (10, 'performEvaluation', 0x3c703e3c7370616e207374796c653d22666f6e742d73697a653a313670783b223e3c7370616e207374796c653d22636f6c6f723a7267622832332c35342c3933293b223e536f6d65207465787420686572652e2e2e3c2f7370616e3e3c2f7370616e3e3c2f703e),
  (11, 'evaluationReport', 0x20536f6d65207465787420686572652e2e2e),
  (12, 'evaAssMethods', 0x3c703e53656c65637420616e206174747269627574652066726f6d207468652064726f7020646f776e206c6973742062656c6f7720696e206f7264657220746f2062652070726f766964656420776974682061206c697374206f6620746865206d6574686f64732066726f6d20776869636820796f75206d61792073656c65637420746865206f6e6520796f7520776f756c64206c696b6520746f2075736520666f72206173736573736d656e74206f662074686973206576616c756174696f6e2061747472696275746520616e6420696e646963617465207768657468657220746865207265717569726564206461746120697320617661696c61626c652e20496620796f7520776f756c642070726566657220746f2075736520616e20616c7465726e6174697665206173736573736d656e74206d6574686f6420796f752063616e20656e746572207468697320696e207468652066726565207465787420626f78206f7220696620796f7520646563696465206e6f7420746f20696e636c75646520746869732061747472696275746520796f752063616e20696e646963617465207468617420796f7520646f206e6f742077616e7420746f20696e636c75646520746869732061747472696275746520696e20796f7572206576616c756174696f6e3c2f703e),
  (13, 'econEvaMethods', 0x5465787420686572652e2e2e);

UPDATE `evalElements` SET `options` = NULL WHERE `evalElementsId` = '9';
UPDATE `evalElements` SET `options` = NULL WHERE `evalElementsId` = '10';


INSERT INTO `options` (`optionId`, `frameworkFieldId`, `componentId`, `elementId`, `val`, `label`) VALUES
  (104, NULL, NULL, 9, NULL, 'Yes'),
  (105, NULL, NULL, 9, NULL, 'No'),
  (106, NULL, NULL, 10, NULL, 'No'),
  (107, NULL, NULL, 10, NULL, 'Yes');