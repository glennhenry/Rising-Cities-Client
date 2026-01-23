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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && Boolean(this)))
            {
               this._flavourText = param1.flavour;
               if(!_loc3_)
               {
                  this._maxSuccessChance = param1.max;
                  if(_loc2_ || Boolean(param1))
                  {
                     this._currentSuccessChance = param1.poss;
                     if(_loc2_ || _loc3_)
                     {
                        this._renderLib = param1.renderLib;
                        if(!_loc3_)
                        {
                           addr0072:
                           this._renderImg = param1.renderImg;
                           if(_loc2_)
                           {
                              this._renderSwf = param1.renderSwf;
                              if(!(_loc3_ && _loc2_))
                              {
                                 this._rewardGfxId = param1.rewardGfx;
                                 if(!_loc3_)
                                 {
                                    this._rewardLocaId = param1.rewardLoca;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§goto(addr00c8);
                                    }
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr00c8);
                              }
                              §§goto(addr0131);
                           }
                           §§goto(addr0105);
                        }
                     }
                     §§goto(addr0131);
                  }
                  §§goto(addr0122);
               }
               §§goto(addr0072);
            }
            §§goto(addr0131);
         }
         addr00c8:
         this._rewardAmount = param1.rewardAmount;
         if(!(_loc3_ && Boolean(param1)))
         {
            addr00df:
            this._efficiencyProgressVo = param1.effVo;
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0105:
               this._luckProgressVo = param1.luckVo;
               if(_loc2_)
               {
                  §§goto(addr0114);
               }
            }
            §§goto(addr0131);
         }
         addr0114:
         this._goofinessProgressVo = param1.goofVo;
         if(!_loc3_)
         {
            addr0122:
            this._timer = param1.timer;
            if(_loc2_)
            {
               addr0131:
               this._professionalSlots = param1.slots;
            }
         }
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

