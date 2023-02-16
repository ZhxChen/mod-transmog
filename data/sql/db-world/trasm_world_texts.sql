SET @TEXT_ID := 601083;
DELETE FROM `npc_text` WHERE `ID` IN  (@TEXT_ID,@TEXT_ID+1);
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(@TEXT_ID, '幻化功能使你在不改变物品属性的情况下改变物品的外观.\r\n幻化中使用的物品不再是可退款、可交易的，并且将与你绑定.\r\n更新菜单会更新外观和价格.\r\n\r\n不是所有的东西都可以互相幻化.\r\n限制包括但不限于:\r\n只有护甲和武器可以被幻化\r\n枪支、弓和弩可以相互幻化.\r\n钓鱼竿不能幻化.\r\n幻化装备你必须可以使用.\r\n\r\n只有你拥有的装备，幻化才会保留.\r\n如果你试图将装备放入公会银行或邮寄给其他人，那么幻化的效果就会被移除.\r\n\r\n你也可以在幻化师那里免费移除幻化.'),
(@TEXT_ID+1, '你可以保存你自己的幻化套装.\r\n\r\n要保存，首先你必须将你装备的物品幻化.\r\n然后进入套装管理菜单，选择保存套装,\r\n所有你已经幻化的物品都会显示出来，这样你就能看到你正在保存的物品.\r\n如果你认为这套装备没有问题，你可以点击保存这套装备，并重命名.\r\n\r\n要使用一个套装，你可以在套装管理菜单中点击已保存的套装，然后选择使用套装.\r\n如果该套装对一个已经被幻化的物品进行幻化，那么旧的幻化就会丢失.\r\n请注意，在尝试使用一个套装时，与正常的幻化一样，适用同样的幻化限制.\r\n\r\n要删除一个套装，你可以进入该套装的菜单，选择删除套装.');

SET @STRING_ENTRY := 11100;
DELETE FROM `acore_string` WHERE `entry` IN  (@STRING_ENTRY+0,@STRING_ENTRY+1,@STRING_ENTRY+2,@STRING_ENTRY+3,@STRING_ENTRY+4,@STRING_ENTRY+5,@STRING_ENTRY+6,@STRING_ENTRY+7,@STRING_ENTRY+8,@STRING_ENTRY+9,@STRING_ENTRY+10, @STRING_ENTRY+11, @STRING_ENTRY+12, @STRING_ENTRY+13, @STRING_ENTRY+14, @STRING_ENTRY+15, @STRING_ENTRY+16);
INSERT INTO `acore_string` (`entry`, `content_default`) VALUES
(@STRING_ENTRY+0, '物品已幻化'),
(@STRING_ENTRY+1, '装备栏位是空的'),
(@STRING_ENTRY+2, '所选源装备无效'),
(@STRING_ENTRY+3, '源装备不存在'),
(@STRING_ENTRY+4, '目标装备不存在'),
(@STRING_ENTRY+5, '所选装备无效'),
(@STRING_ENTRY+6, '金钱不足'),
(@STRING_ENTRY+7, '代币不足'),
(@STRING_ENTRY+8, '幻化已取消'),
(@STRING_ENTRY+9, '目前没有幻化'),
(@STRING_ENTRY+10, '所插入名称无效'),
(@STRING_ENTRY+11, '显示幻化物品，重新登录更新当前部位'),
(@STRING_ENTRY+12, '隐藏幻化物品，重新登录更新当前部位'),
(@STRING_ENTRY+13, '所选装备不适合幻化'),
(@STRING_ENTRY+14, '所选装备不能用于目标玩家的幻化'),
(@STRING_ENTRY+15, '正在执行幻化外观同步...'),
(@STRING_ENTRY+16, '外观同步完成');

DELETE FROM `command` WHERE `name` IN ('transmog', 'transmog add', 'transmog sync', 'transmog add set');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('transmog', 0, 'Syntax: .transmog <on/off>\nAllows seeing transmogrified items and the transmogrifier NPC.'),
('transmog add', 1, 'Syntax: .transmog add $player $item\nAdds an item to a player\'s appearance collection.'),
('transmog sync', 0, 'Syntax: .transmog sync\nSyncs transmog addon appearances with the server.'),
('transmog add set', 1, 'Syntax: .transmog add set $player $itemSet\nAdds items of an item set to a player\'s appearance collection.');
