package net.bigpoint.cityrama.model.residentialBook.vo
{
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemImprovementSlotDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class ImprovementSlotComponentVo
   {
      
      private var _configSlot:ConfigPlayfieldItemImprovementSlotDTO;
      
      private var _currentState:String;
      
      private var _improvementVo:ImprovementVo;
      
      private var _unlockLevel:int = 1;
      
      private var _currentTime:Number = 0;
      
      public function ImprovementSlotComponentVo()
      {
         super();
      }
      
      public function get currentState() : String
      {
         return this._currentState;
      }
      
      public function set currentState(param1:String) : void
      {
         this._currentState = param1;
      }
      
      public function set improvementVo(param1:ImprovementVo) : void
      {
         this._improvementVo = param1;
      }
      
      public function get slotText() : String
      {
         return StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.lockedSlot")),this._unlockLevel);
      }
      
      public function get configSlot() : ConfigPlayfieldItemImprovementSlotDTO
      {
         return this._configSlot;
      }
      
      public function set configSlot(param1:ConfigPlayfieldItemImprovementSlotDTO) : void
      {
         this._configSlot = param1;
      }
      
      public function set unlockLevel(param1:int) : void
      {
         this._unlockLevel = param1;
      }
      
      public function get improvementVo() : ImprovementVo
      {
         return this._improvementVo;
      }
      
      public function get improvementBgData() : BriskDynaVo
      {
         if(this.improvementVo)
         {
            return ImprovementLayerProxy.improvementBackground(this.improvementVo.quality);
         }
         return null;
      }
      
      public function get improvementBadgeData() : BriskDynaVo
      {
         if(this.improvementVo)
         {
            return ImprovementLayerProxy.improvementQualityBadge(this.improvementVo.quality);
         }
         return null;
      }
      
      public function get improvementGfx() : BriskDynaVo
      {
         if(this.improvementVo)
         {
            return ImprovementLayerProxy.improvementGfx(this.improvementVo.config);
         }
         return null;
      }
      
      public function get progressVo() : TimerBarComponentVo
      {
         var _loc1_:TimerBarComponentVo = null;
         if(this.improvementVo && this.improvementVo.runtime != -1 && this._currentTime != 0)
         {
            _loc1_ = new TimerBarComponentVo();
            _loc1_.startTime = this.improvementVo.startTime;
            _loc1_.cycleLength = this.improvementVo.runtime;
            _loc1_.targetTime = this.improvementVo.expirationTime;
            _loc1_.currentTime = this._currentTime;
            return _loc1_;
         }
         return null;
      }
      
      public function set currentTime(param1:Number) : void
      {
         this._currentTime = param1;
      }
      
      public function get unlockLevel() : int
      {
         return this._unlockLevel;
      }
   }
}

