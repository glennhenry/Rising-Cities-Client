package net.bigpoint.cityrama.constants
{
   public class ServerOutputConstants
   {
      
      public static const RESOURCE:String = "RESOURCE";
      
      public static const GOOD:String = "GOOD";
      
      public static const PERMISSION:String = "PLAYFIELD_ITEM_PERMISSION";
      
      public static const TAG:String = "TAG";
      
      public static const ASSIST:String = "ASSIST";
      
      public static const IMPROVEMENT:String = "PLAYFIELD_ITEM_IMPROVEMENT";
      
      public static const BEHAVIOUR_TYPE:String = "BEHAVIOUR_TYPE";
      
      public static const PLAYFIELD_ITEM:String = "PLAYFIELD_ITEM";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         RESOURCE = "RESOURCE";
         if(_loc1_ || ServerOutputConstants)
         {
            GOOD = "GOOD";
            if(_loc1_)
            {
               PERMISSION = "PLAYFIELD_ITEM_PERMISSION";
               if(_loc1_)
               {
                  TAG = "TAG";
                  if(!_loc2_)
                  {
                     addr0071:
                     ASSIST = "ASSIST";
                     if(_loc1_)
                     {
                        addr007f:
                        IMPROVEMENT = "PLAYFIELD_ITEM_IMPROVEMENT";
                        if(!_loc2_)
                        {
                           addr008d:
                           BEHAVIOUR_TYPE = "BEHAVIOUR_TYPE";
                           if(!_loc2_)
                           {
                              addr009b:
                              PLAYFIELD_ITEM = "PLAYFIELD_ITEM";
                           }
                           §§goto(addr00a4);
                        }
                     }
                     §§goto(addr009b);
                  }
                  addr00a4:
                  return;
               }
            }
            §§goto(addr0071);
         }
         §§goto(addr007f);
      }
      §§goto(addr008d);
      
      public function ServerOutputConstants()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
   }
}

