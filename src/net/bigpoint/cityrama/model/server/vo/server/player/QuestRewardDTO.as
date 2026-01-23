package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestRewardDTO;
   
   public class QuestRewardDTO extends QuestCostVo implements IQuestRewardDTO
   {
      
      private var _willItDrop:Boolean;
      
      private var _isMainReward:Boolean;
      
      private var _resourceConfig:ConfigResourceDTO;
      
      private var _goodConfig:ConfigGoodDTO;
      
      private var _configPlayfieldItem:ConfigPlayfieldItemDTO;
      
      private var _improvementConfig:ConfigImprovementDTO;
      
      private var _assistConfig:ConfigAssistDTO;
      
      public function QuestRewardDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super(param1);
            if(!_loc3_)
            {
               this._willItDrop = param1.d;
               if(_loc2_ || Boolean(param1))
               {
                  addr0042:
                  this._isMainReward = param1.m;
               }
               return;
            }
         }
         §§goto(addr0042);
      }
      
      public function get willItDrop() : Boolean
      {
         return this._willItDrop;
      }
      
      public function get resourceConfig() : ConfigResourceDTO
      {
         return this._resourceConfig;
      }
      
      public function get goodConfig() : ConfigGoodDTO
      {
         return this._goodConfig;
      }
      
      public function set resourceConfig(param1:ConfigResourceDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._resourceConfig = param1;
         }
      }
      
      public function set goodConfig(param1:ConfigGoodDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._goodConfig = param1;
         }
      }
      
      public function get configPlayfieldItem() : ConfigPlayfieldItemDTO
      {
         return this._configPlayfieldItem;
      }
      
      public function set configPlayfieldItem(param1:ConfigPlayfieldItemDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._configPlayfieldItem = param1;
         }
      }
      
      public function get isMainReward() : Boolean
      {
         return this._isMainReward;
      }
      
      public function get improvementConfig() : ConfigImprovementDTO
      {
         return this._improvementConfig;
      }
      
      public function set improvementConfig(param1:ConfigImprovementDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._improvementConfig = param1;
         }
      }
      
      public function get assistConfig() : ConfigAssistDTO
      {
         return this._assistConfig;
      }
      
      public function set assistConfig(param1:ConfigAssistDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._assistConfig = param1;
         }
      }
   }
}

