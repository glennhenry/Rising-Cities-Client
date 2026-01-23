package net.bigpoint.cityrama.model.quest
{
   public class QuestSystemTaskTargetTypeConstants
   {
      
      public static const GOOD:String = "GOOD";
      
      public static const RESOURCE:String = "RESOURCE";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         GOOD = "GOOD";
         if(!(_loc2_ && _loc1_))
         {
            §§goto(addr0035);
         }
         §§goto(addr004b);
      }
      addr0035:
      
      public static const PLAYFIELDITEM:String = "PLAYFIELD_ITEM";
      
      if(!(_loc2_ && _loc2_))
      {
         addr004b:
         RESOURCE = "RESOURCE";
      }
      
      public function QuestSystemTaskTargetTypeConstants()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
   }
}

