package net.bigpoint.cityrama.model.server.vo.server.quest
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemRewardTypeConstants;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardDTO;
   
   public class QuestChallengeConfigDTO extends AbstractQuestSystemConfigDTO
   {
      
      private var _rewardList:Vector.<QuestRewardDTO>;
      
      private var _requiredForUpsell:Boolean;
      
      public function QuestChallengeConfigDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Object = null;
         if(_loc6_ || Boolean(param1))
         {
            this._rewardList = new Vector.<QuestRewardDTO>();
            if(!(_loc5_ && _loc3_))
            {
               super(param1);
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr0056);
               }
               §§goto(addr0067);
            }
            addr0056:
            if(param1)
            {
               addr0067:
               for each(_loc2_ in param1.rw)
               {
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     if(_loc2_ == null)
                     {
                        continue;
                     }
                     if(_loc5_ && Boolean(param1))
                     {
                        continue;
                     }
                     if(_loc2_.t == QuestSystemRewardTypeConstants.QUEST)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue;
                     }
                  }
                  this._rewardList.push(new QuestRewardDTO(_loc2_));
               }
               if(_loc6_)
               {
                  this._requiredForUpsell = param1.u;
               }
            }
            return;
         }
         §§goto(addr0067);
      }
      
      public function get rewardList() : Vector.<QuestRewardDTO>
      {
         return this._rewardList;
      }
      
      public function get requiredForUpsell() : Boolean
      {
         return this._requiredForUpsell;
      }
   }
}

