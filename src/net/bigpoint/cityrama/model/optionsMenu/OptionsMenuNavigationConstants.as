package net.bigpoint.cityrama.model.optionsMenu
{
   public class OptionsMenuNavigationConstants
   {
      
      public static const TOGGLE_MUSIC:String = "TOGGLE_MUSIC";
      
      public static const TOGGLE_SOUND:String = "TOGGLE_SOUND";
      
      public static const TOGGLE_PERFORMACE:String = "TOGGLE_PERFORMACE";
      
      public static const TOGGLE_FULLSCREEN:String = "TOGGLE_FULLSCREEN";
      
      public static const TOGGLE_SETTINGS:String = "TOGGLE_SETTINGS";
      
      public static const TOGGLE_ZOOM_IN:String = "TOGGLE_ZOOM_IN";
      
      public static const TOGGLE_ZOOM_OUT:String = "TOGGLE_ZOOM_OUT";
      
      public static const TOGGLE_BASES:String = "TOGGLE_BASES";
      
      public static const TOGGLE_ZOOM:String = "TOGGLE_ZOOM";
      
      public static const OPTIONS_LIST_SPARSE_TRAFFIC:String = "rcl.optionslayer.paperPopup.lowCitizens";
      
      public static const OPTIONS_LIST_LOW_QUALITY_GRAPHICS:String = "rcl.optionslayer.paperPopup.lowGraphics";
      
      public static const OPTIONS_LIST_INCREASING_TIPS:String = "rcl.optionslayer.paperPopup.floater";
      
      public static const OPTIONS_LIST_INCREASING_SIMBOLS:String = "rcl.optionslayer.paperPopup.dropIcons";
      
      public static const OPTIONS_LIST_DELAY_NOTIFICATION:String = "rcl.optionslayer.paperPopup.fieldLayerDelay";
      
      public static const OPTIONS_LIST_FULLSCREEN_ACTIVE:String = "rcl.optionslayer.paperPopup.fullscreen";
      
      public static const OPTIONS_LIST_RC_VERIFICATION:String = "rcl.optionslayer.paperPopup.rcVerification";
      
      public static const TOGGLE_AUTOMATIC_DECISION:String = "TOGGLE_AUTOMATIC_DECISION";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || OptionsMenuNavigationConstants)
      {
         TOGGLE_MUSIC = "TOGGLE_MUSIC";
         if(!_loc2_)
         {
            TOGGLE_SOUND = "TOGGLE_SOUND";
            if(!(_loc2_ && _loc2_))
            {
               TOGGLE_PERFORMACE = "TOGGLE_PERFORMACE";
               if(_loc1_)
               {
                  addr004f:
                  TOGGLE_FULLSCREEN = "TOGGLE_FULLSCREEN";
                  if(_loc1_)
                  {
                     TOGGLE_SETTINGS = "TOGGLE_SETTINGS";
                     if(!(_loc2_ && _loc2_))
                     {
                        TOGGLE_ZOOM_IN = "TOGGLE_ZOOM_IN";
                        if(_loc1_ || OptionsMenuNavigationConstants)
                        {
                           addr0089:
                           TOGGLE_ZOOM_OUT = "TOGGLE_ZOOM_OUT";
                           if(_loc1_ || OptionsMenuNavigationConstants)
                           {
                              addr00a9:
                              TOGGLE_BASES = "TOGGLE_BASES";
                              if(!_loc2_)
                              {
                                 TOGGLE_ZOOM = "TOGGLE_ZOOM";
                                 if(!_loc2_)
                                 {
                                    addr00c5:
                                    OPTIONS_LIST_SPARSE_TRAFFIC = "rcl.optionslayer.paperPopup.lowCitizens";
                                    if(_loc1_ || _loc1_)
                                    {
                                       OPTIONS_LIST_LOW_QUALITY_GRAPHICS = "rcl.optionslayer.paperPopup.lowGraphics";
                                       if(!(_loc2_ && OptionsMenuNavigationConstants))
                                       {
                                          addr00f3:
                                          OPTIONS_LIST_INCREASING_TIPS = "rcl.optionslayer.paperPopup.floater";
                                          if(_loc1_ || _loc1_)
                                          {
                                             §§goto(addr010a);
                                          }
                                          §§goto(addr012b);
                                       }
                                       addr010a:
                                       OPTIONS_LIST_INCREASING_SIMBOLS = "rcl.optionslayer.paperPopup.dropIcons";
                                       if(!(_loc2_ && OptionsMenuNavigationConstants))
                                       {
                                          addr012b:
                                          OPTIONS_LIST_DELAY_NOTIFICATION = "rcl.optionslayer.paperPopup.fieldLayerDelay";
                                          if(!_loc2_)
                                          {
                                             addr013a:
                                             OPTIONS_LIST_FULLSCREEN_ACTIVE = "rcl.optionslayer.paperPopup.fullscreen";
                                             if(!_loc2_)
                                             {
                                                addr0149:
                                                OPTIONS_LIST_RC_VERIFICATION = "rcl.optionslayer.paperPopup.rcVerification";
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr0160:
                                                   TOGGLE_AUTOMATIC_DECISION = "TOGGLE_AUTOMATIC_DECISION";
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr016b);
                                    }
                                    §§goto(addr013a);
                                 }
                                 §§goto(addr0149);
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr00f3);
                        }
                        §§goto(addr0149);
                     }
                     addr016b:
                     return;
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr0089);
            }
            §§goto(addr012b);
         }
         §§goto(addr0160);
      }
      §§goto(addr004f);
      
      public function OptionsMenuNavigationConstants()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
   }
}

