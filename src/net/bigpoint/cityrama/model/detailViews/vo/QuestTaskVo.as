package net.bigpoint.cityrama.model.detailViews.vo
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.quest.QuestSystemTaskTargetTypeConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class QuestTaskVo
   {
      
      private static const DEPOSIT_TASK_NONE:String = "DEPOSIT_TASK_NONE";
      
      private var _taskDTO:QuestTaskDTO;
      
      private var _questSubType:String;
      
      private var _questId:Number;
      
      private var _configQuestId:Number;
      
      private var _gfxId:int;
      
      private var _taskText:String;
      
      private var _finishedTaskText:String;
      
      private var _flavour:String;
      
      private var _isActive:Boolean;
      
      private var _isCompleted:Boolean;
      
      private var _isVirtual:Boolean;
      
      private var _isLocked:Boolean;
      
      private var _instantFinishCosts:Number = 0;
      
      private var _currentRealCurrency:Number = 0;
      
      private var _currentDepositStock:Number = 0;
      
      private var _depositGood:ConfigGoodDTO;
      
      private var _depositResource:ConfigResourceDTO;
      
      private var _linkParameter:Array;
      
      public function QuestTaskVo()
      {
         super();
      }
      
      public function checkChanged(param1:QuestTaskVo) : Boolean
      {
         return this._isActive != param1.isActive || this._isCompleted != param1.isCompleted || this._taskText != param1.taskText || this._isLocked != param1.isLocked;
      }
      
      public function get depositedItemAmount() : Number
      {
         return this._taskDTO.currentValue;
      }
      
      public function get currentDepositStock() : Number
      {
         return this._currentDepositStock;
      }
      
      public function set currentDepositStock(param1:Number) : void
      {
         this._currentDepositStock = param1;
      }
      
      public function get currentRealCurrency() : Number
      {
         return this._currentRealCurrency;
      }
      
      public function set currentRealCurrency(param1:Number) : void
      {
         this._currentRealCurrency = param1;
      }
      
      public function set instantFinishCosts(param1:Number) : void
      {
         this._instantFinishCosts = param1;
      }
      
      public function get isDepositTask() : Boolean
      {
         return this._depositGood != null || this._depositResource != null;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get taskText() : String
      {
         return this._taskText;
      }
      
      public function get flavour() : String
      {
         return this._flavour;
      }
      
      public function get isActive() : Boolean
      {
         return this._isActive;
      }
      
      public function get isCompleted() : Boolean
      {
         return this._isCompleted;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         this._isActive = param1;
      }
      
      public function set isCompleted(param1:Boolean) : void
      {
         this._isCompleted = param1;
      }
      
      public function get isVirtual() : Boolean
      {
         return this._isVirtual;
      }
      
      public function get isLocked() : Boolean
      {
         return this._isLocked;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this._isLocked = param1;
      }
      
      public function get isSkippable() : Boolean
      {
         return this._instantFinishCosts > 0;
      }
      
      public function set gfxId(param1:int) : void
      {
         this._gfxId = param1;
      }
      
      public function set taskText(param1:String) : void
      {
         this._taskText = param1;
      }
      
      public function set flavour(param1:String) : void
      {
         this._flavour = param1;
      }
      
      public function set isVirtual(param1:Boolean) : void
      {
         this._isVirtual = param1;
      }
      
      public function get instantFinishCosts() : Number
      {
         return this._instantFinishCosts;
      }
      
      public function get neededItemDepositAmount() : Number
      {
         return this.taskDTO.taskConfig.questTaskTarget.target;
      }
      
      public function set depositGood(param1:ConfigGoodDTO) : void
      {
         this._depositGood = param1;
      }
      
      public function set depositResource(param1:ConfigResourceDTO) : void
      {
         this._depositResource = param1;
      }
      
      public function get configQuestTaskId() : Number
      {
         return this._taskDTO.configQuestTaskID;
      }
      
      public function get questSubType() : String
      {
         return this._questSubType;
      }
      
      public function set questSubType(param1:String) : void
      {
         this._questSubType = param1;
      }
      
      public function get questId() : Number
      {
         return this._questId;
      }
      
      public function set questId(param1:Number) : void
      {
         this._questId = param1;
      }
      
      public function get finishedTaskText() : String
      {
         return this._finishedTaskText;
      }
      
      public function set finishedTaskText(param1:String) : void
      {
         this._finishedTaskText = param1;
      }
      
      public function set taskDTO(param1:QuestTaskDTO) : void
      {
         this._taskDTO = param1;
      }
      
      public function get taskDTO() : QuestTaskDTO
      {
         return this._taskDTO;
      }
      
      public function set configQuestId(param1:Number) : void
      {
         this._configQuestId = param1;
      }
      
      public function get configQuestId() : Number
      {
         return this._configQuestId;
      }
      
      public function get depositItemConfigId() : Number
      {
         if(this._depositGood)
         {
            return this._depositGood.id;
         }
         if(this._depositResource)
         {
            return this._depositResource.id;
         }
         return NaN;
      }
      
      public function get depositBarTooltip() : String
      {
         if(this._depositGood)
         {
            return LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.deposit.progress.tooltip",[this.depositItemName,LocaUtils.getThousendSeperatedNumber(this.currentDepositStock)]);
         }
         if(this._depositResource)
         {
            return LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.deposit.resource.progress.tooltip",[this.depositItemName,LocaUtils.getThousendSeperatedNumber(this.currentDepositStock)]);
         }
         return "";
      }
      
      public function get depositButtonLabel() : String
      {
         return LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.deposit.button.label.capital");
      }
      
      public function get depositButtonTooltip() : String
      {
         if(this._depositGood)
         {
            return LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.deposit.button.tooltip");
         }
         if(this._depositResource)
         {
            return LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.deposit.resource.button.tooltip");
         }
         return "";
      }
      
      public function get skipText() : String
      {
         return LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.skipText",[LocaUtils.getThousendSeperatedNumber(this.instantFinishCosts)]);
      }
      
      private function get depositItemName() : String
      {
         if(this._depositGood)
         {
            return LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._depositGood.localeId);
         }
         if(this._depositResource)
         {
            switch(this._depositResource.type)
            {
               case ServerResConst.RESOURCE_REALCURRENCY:
                  return LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.realcurrency");
               case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                  return LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.virtualcurrency");
               case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                  return LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.productionpoints");
               case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                  return LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.educationpoints");
            }
         }
         return "";
      }
      
      public function get linkParameter() : Array
      {
         return this._linkParameter;
      }
      
      public function set linkParameter(param1:Array) : void
      {
         this._linkParameter = param1;
      }
      
      public function get depositType() : String
      {
         if(this._depositGood)
         {
            return QuestSystemTaskTargetTypeConstants.GOOD;
         }
         if(this._depositResource)
         {
            return QuestSystemTaskTargetTypeConstants.RESOURCE;
         }
         return "";
      }
      
      public function getTaskIconVo(param1:Boolean = false) : BriskDynaVo
      {
         if(this.isCompleted && !param1)
         {
            return new BriskDynaVo("gui_popups_questPopup","task_checkmark_grey");
         }
         if(this.isDepositTask)
         {
            if(this._depositGood)
            {
               return new BriskDynaVo("gui_popups_smallGoodIcons","small_" + this._depositGood.gfxId);
            }
            if(this._depositResource)
            {
               switch(this._depositResource.type)
               {
                  case ServerResConst.RESOURCE_REALCURRENCY:
                     return new BriskDynaVo("gui_popups_questPopup","task50016");
                  case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                     return new BriskDynaVo("gui_popups_questPopup","task50014");
                  case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                     return new BriskDynaVo("gui_popups_questPopup","task50030");
                  case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                     return new BriskDynaVo("gui_popups_questPopup","task50035");
               }
            }
            return null;
         }
         return new BriskDynaVo("gui_popups_questPopup","task" + this.gfxId.toString());
      }
   }
}

