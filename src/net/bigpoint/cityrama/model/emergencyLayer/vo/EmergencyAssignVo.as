package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class EmergencyAssignVo
   {
      
      private var _flavourText:String;
      
      private var _maxSuccessChance:Number;
      
      private var _currentSuccessChance:Number;
      
      private var _renderLib:String;
      
      private var _renderImg:String;
      
      private var _renderSwf:String;
      
      private var _rewardGfxId:int;
      
      private var _rewardLocaId:int;
      
      private var _rewardAmount:uint;
      
      private var _efficiencyProgressVo:ProgressThresholdVo;
      
      private var _luckProgressVo:ProgressThresholdVo;
      
      private var _goofinessProgressVo:ProgressThresholdVo;
      
      private var _timer:TimerBarComponentVo;
      
      private var _professionalSlots:Vector.<ProfessionalSlotVo>;
      
      public function EmergencyAssignVo(param1:Object)
      {
         super();
         this._flavourText = param1.flavour;
         this._maxSuccessChance = param1.max;
         this._currentSuccessChance = param1.poss;
         this._renderLib = param1.renderLib;
         this._renderImg = param1.renderImg;
         this._renderSwf = param1.renderSwf;
         this._rewardGfxId = param1.rewardGfx;
         this._rewardLocaId = param1.rewardLoca;
         this._rewardAmount = param1.rewardAmount;
         this._efficiencyProgressVo = param1.effVo;
         this._luckProgressVo = param1.luckVo;
         this._goofinessProgressVo = param1.goofVo;
         this._timer = param1.timer;
         this._professionalSlots = param1.slots;
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function get maxSuccessChance() : Number
      {
         return this._maxSuccessChance;
      }
      
      public function get renderLib() : String
      {
         return this._renderLib;
      }
      
      public function get renderImg() : String
      {
         return this._renderImg;
      }
      
      public function get timer() : TimerBarComponentVo
      {
         return this._timer;
      }
      
      public function get professionalSlots() : Vector.<ProfessionalSlotVo>
      {
         return this._professionalSlots;
      }
      
      public function get currentSuccessChance() : Number
      {
         return this._currentSuccessChance;
      }
      
      public function get rewardGfxId() : int
      {
         return this._rewardGfxId;
      }
      
      public function get rewardAmount() : uint
      {
         return this._rewardAmount;
      }
      
      public function get rewardLocaId() : int
      {
         return this._rewardLocaId;
      }
      
      public function get renderSwf() : String
      {
         return this._renderSwf;
      }
      
      public function get efficiencyProgressVo() : ProgressThresholdVo
      {
         return this._efficiencyProgressVo;
      }
      
      public function get luckProgressVo() : ProgressThresholdVo
      {
         return this._luckProgressVo;
      }
      
      public function get goofinessProgressVo() : ProgressThresholdVo
      {
         return this._goofinessProgressVo;
      }
   }
}

