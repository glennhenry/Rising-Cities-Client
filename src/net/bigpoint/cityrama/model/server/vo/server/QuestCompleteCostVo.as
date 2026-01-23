package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestCostVo;
   
   public class QuestCompleteCostVo extends QuestCostVo
   {
      
      private var _costList:Vector.<QuestCostVo>;
      
      public function QuestCompleteCostVo(param1:Object)
      {
         super(param1);
         this._costList = new Vector.<QuestCostVo>();
         this._costList.push(new QuestCostVo(param1));
      }
      
      public function get costList() : Vector.<QuestCostVo>
      {
         return this._costList;
      }
   }
}

