package net.bigpoint.cityrama.model.server.vo.server.quest
{
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskTargetDTO;
   
   public class QuestTaskTargetDTO implements IQuestTaskTargetDTO
   {
      
      private var _target:int;
      
      private var _questTaskItem:Vector.<IQuestTaskItemDTO>;
      
      public function QuestTaskTargetDTO(param1:Object)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         if(_loc5_ || _loc3_)
         {
            super();
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               this._questTaskItem = new Vector.<IQuestTaskItemDTO>();
               if(_loc5_ || Boolean(this))
               {
                  §§goto(addr005f);
               }
            }
            §§goto(addr0064);
         }
         addr005f:
         if(param1)
         {
            addr0064:
            var _loc3_:int = 0;
            for each(_loc2_ in param1.i)
            {
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  this._questTaskItem.push(new QuestTaskItemVo(_loc2_));
               }
            }
            if(!_loc6_)
            {
               this._target = param1.t;
            }
         }
      }
      
      public function get target() : int
      {
         return this._target;
      }
      
      public function get questTaskItem() : Vector.<IQuestTaskItemDTO>
      {
         return this._questTaskItem;
      }
   }
}

