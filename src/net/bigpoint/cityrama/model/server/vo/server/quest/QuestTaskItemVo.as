package net.bigpoint.cityrama.model.server.vo.server.quest
{
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskItemDTO;
   
   public class QuestTaskItemVo implements IQuestTaskItemDTO
   {
      
      private var _questTaskItemType:String;
      
      private var _questTaskItemID:Number;
      
      public function QuestTaskItemVo(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               this._questTaskItemID = param1.id;
               if(_loc2_)
               {
                  addr004a:
                  this._questTaskItemType = param1.t;
               }
               §§goto(addr0053);
            }
            §§goto(addr004a);
         }
         addr0053:
      }
      
      public function get questTaskItemType() : String
      {
         return this._questTaskItemType;
      }
      
      public function get questTaskItemID() : Number
      {
         return this._questTaskItemID;
      }
   }
}

