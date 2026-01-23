package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestCostVo;
   
   public class QuestCompleteCostVo extends QuestCostVo
   {
      
      private var _costList:Vector.<QuestCostVo>;
      
      public function QuestCompleteCostVo(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super(param1);
            if(_loc2_ || _loc2_)
            {
               addr003b:
               this._costList = new Vector.<QuestCostVo>();
               if(_loc2_)
               {
                  this._costList.push(new QuestCostVo(param1));
               }
            }
            return;
         }
         §§goto(addr003b);
      }
      
      public function get costList() : Vector.<QuestCostVo>
      {
         return this._costList;
      }
   }
}

