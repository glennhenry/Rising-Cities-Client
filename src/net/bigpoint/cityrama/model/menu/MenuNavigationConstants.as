package net.bigpoint.cityrama.model.menu
{
   public class MenuNavigationConstants
   {
      
      public static const MAIN_NEW_ARCHITECT:String = "gui_mainmenue_architect";
      
      public static const MAIN_NEW_FRIENDS:String = "gui_mainmenue_friends";
      
      public static const MAIN_NEW_MARKET:String = "gui_mainmenue_market";
      
      public static const MAIN_NEW_INVENTORY:String = "gui_mainmenue_inventory";
      
      public static const MAIN_NEW_MAJOR:String = "gui_mainmenue_majorvilla";
      
      public static const MAIN_NEW_PLACEMODE:String = "gui_mainmenue_cursor";
      
      public static const MAIN_NEW_OPTIONS:String = "gui_mainmenue_options";
      
      public static const MAIN_CURSOR:String = "MAIN_CURSOR";
      
      public static const SUB_CURSOR_NORMAL:String = "SUB_CURSOR_NORMAL";
      
      public static const SUB_CURSOR_MOVE:String = "SUB_CURSOR_MOVE";
      
      public static const SUB_CURSOR_DESTROY:String = "SUB_CURSOR_DESTROY";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         MAIN_NEW_ARCHITECT = "gui_mainmenue_architect";
         if(!_loc1_)
         {
            MAIN_NEW_FRIENDS = "gui_mainmenue_friends";
            if(!(_loc1_ && _loc1_))
            {
               MAIN_NEW_MARKET = "gui_mainmenue_market";
               if(!(_loc1_ && _loc2_))
               {
                  MAIN_NEW_INVENTORY = "gui_mainmenue_inventory";
                  if(_loc2_ || MenuNavigationConstants)
                  {
                     MAIN_NEW_MAJOR = "gui_mainmenue_majorvilla";
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0091:
                        MAIN_NEW_PLACEMODE = "gui_mainmenue_cursor";
                        if(!_loc1_)
                        {
                           MAIN_NEW_OPTIONS = "gui_mainmenue_options";
                           if(_loc2_)
                           {
                              MAIN_CURSOR = "MAIN_CURSOR";
                              if(_loc2_)
                              {
                                 SUB_CURSOR_NORMAL = "SUB_CURSOR_NORMAL";
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr00e1:
                                    SUB_CURSOR_MOVE = "SUB_CURSOR_MOVE";
                                    if(!_loc1_)
                                    {
                                       addr00ef:
                                       SUB_CURSOR_DESTROY = "SUB_CURSOR_DESTROY";
                                    }
                                 }
                              }
                              §§goto(addr00f8);
                           }
                        }
                        §§goto(addr00ef);
                     }
                     §§goto(addr00e1);
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr0091);
            }
            §§goto(addr00ef);
         }
         addr00f8:
         return;
      }
      §§goto(addr00e1);
      
      public function MenuNavigationConstants()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
   }
}

