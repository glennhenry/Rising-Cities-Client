package net.bigpoint.cityrama.model.urbies
{
   public class CitizenConstants
   {
      
      public static const TYPE_NONE:String = "none";
      
      public static const TYPE_CITY_STORY:String = "cityStory";
      
      public static const TYPE_QUEST:String = "quest";
      
      public static const WALKER_PATH_RESUMED:String = "walkerPathResumed";
      
      public static const WALKER_PATH_PAUSED:String = "walkerPathPaused";
      
      public static const WALKER_PATH_NOT_POSSIBLE:String = "walkerPathNotPossible";
      
      public static const WALKER_PATH_FOUND:String = "walkerPathFound";
      
      public static const WALKER_PATH_COMPLETE:String = "walkerPathComplete";
      
      public static const WALKER_FRIEND_FOUND:String = "walkerFriendFound";
      
      public static const WALKER_DIRECTION_CHANGED:String = "walkerDirectionChanged";
      
      public static const WALKER_CELL_CHANGED:String = "walkerCellChanged";
      
      public static const INAUGURATE_MODIFIER:Number = 1;
      
      public static const INAUGURATE_DISTANCE:Number = 6;
      
      public static const ANIMATION_ACTION_REMOVE:String = "ANIMATION_ACTION_REMOVE";
      
      public static const ANIMATION_ACTION_GO_RANDOM:String = "ANIMATION_ACTION_GO_RANDOM";
      
      public static const ANIMATION_ACTION_GO_HOME:String = "ANIMATION_ACTION_GO_HOME";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         TYPE_NONE = "none";
         if(!(_loc1_ && _loc1_))
         {
            TYPE_CITY_STORY = "cityStory";
            if(!_loc1_)
            {
               TYPE_QUEST = "quest";
               if(!_loc1_)
               {
                  addr004f:
                  WALKER_PATH_RESUMED = "walkerPathResumed";
                  if(!_loc1_)
                  {
                     WALKER_PATH_PAUSED = "walkerPathPaused";
                     if(_loc2_ || CitizenConstants)
                     {
                        WALKER_PATH_NOT_POSSIBLE = "walkerPathNotPossible";
                        if(!_loc1_)
                        {
                           WALKER_PATH_FOUND = "walkerPathFound";
                           if(!_loc1_)
                           {
                              WALKER_PATH_COMPLETE = "walkerPathComplete";
                              if(_loc2_ || _loc1_)
                              {
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00e9);
                           }
                           §§goto(addr0141);
                        }
                        addr00b4:
                        WALKER_FRIEND_FOUND = "walkerFriendFound";
                        if(_loc2_)
                        {
                           WALKER_DIRECTION_CHANGED = "walkerDirectionChanged";
                           if(!_loc1_)
                           {
                              addr00d2:
                              WALKER_CELL_CHANGED = "walkerCellChanged";
                              if(_loc2_ || _loc2_)
                              {
                                 addr00e9:
                                 INAUGURATE_MODIFIER = 1;
                                 if(_loc2_ || CitizenConstants)
                                 {
                                    addr00fe:
                                    INAUGURATE_DISTANCE = 6;
                                    if(_loc2_)
                                    {
                                       addr0115:
                                       ANIMATION_ACTION_REMOVE = "ANIMATION_ACTION_REMOVE";
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr012b:
                                          ANIMATION_ACTION_GO_RANDOM = "ANIMATION_ACTION_GO_RANDOM";
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr0141:
                                             ANIMATION_ACTION_GO_HOME = "ANIMATION_ACTION_GO_HOME";
                                          }
                                          §§goto(addr014a);
                                       }
                                       §§goto(addr0141);
                                    }
                                    §§goto(addr014a);
                                 }
                                 §§goto(addr0115);
                              }
                              §§goto(addr014a);
                           }
                           §§goto(addr00fe);
                        }
                        addr014a:
                        return;
                     }
                     §§goto(addr012b);
                  }
                  §§goto(addr00e9);
               }
               §§goto(addr0141);
            }
            §§goto(addr00d2);
         }
         §§goto(addr00e9);
      }
      §§goto(addr004f);
      
      public function CitizenConstants()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
   }
}

