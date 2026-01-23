package net.bigpoint.cityrama.constants
{
   public class ServerConfigElementCategory
   {
      
      public static const GOOD:String = "GOOD";
      
      public static const PLAYFIELD_ITEM_PERMISSION:String = "PLAYFIELD_ITEM_PERMISSION";
      
      public static const RESOURCE:String = "RESOURCE";
      
      public static const PLAYFIELD_ITEM_IMPROVEMENT:String = "PLAYFIELD_ITEM_IMPROVEMENT";
      
      public static const PLAYFIELD_ITEM:String = "PLAYFIELD_ITEM";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         GOOD = "GOOD";
         if(_loc1_)
         {
            PLAYFIELD_ITEM_PERMISSION = "PLAYFIELD_ITEM_PERMISSION";
            if(!(_loc2_ && _loc1_))
            {
               addr0055:
               RESOURCE = "RESOURCE";
               if(!_loc2_)
               {
                  §§goto(addr0063);
               }
               §§goto(addr0071);
            }
            addr0063:
            PLAYFIELD_ITEM_IMPROVEMENT = "PLAYFIELD_ITEM_IMPROVEMENT";
            if(!_loc2_)
            {
               addr0071:
               PLAYFIELD_ITEM = "PLAYFIELD_ITEM";
            }
            §§goto(addr007a);
         }
         §§goto(addr0055);
      }
      addr007a:
      
      public function ServerConfigElementCategory()
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

