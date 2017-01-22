{
// This script is executed when the mouse hovers over a turret

// make the turret_info_menu appear and display information about the turret

if (global.info_menu == undefined) {
    global.info_menu = instance_create(0, 0, turret_info_menu);
} 
global.info_menu.turret_info = self;
global.info_menu.x = self.x + 32;
global.info_menu.y = self.y + 32;

}
