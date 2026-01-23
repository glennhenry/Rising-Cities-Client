package net.bigpoint.cityrama.model.miniLayer.vo
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerDisplayComponentVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.LocaUtils;
   
   public class ImprovementInfoMiniLayerComponentVo
   {
      
      public static const STATE_EXPIRED:String = "STATE_EXPIRED";
      
      public static const STATE_NEW:String = "STATE_NEW";
      
      public static const STATE_RUNNING:String = "STATE_RUNNING";
      
      private var _improvementVo:ImprovementVo;
      
      private var _state:String;
      
      private var _currentTime:Number = -1;
      
      public function ImprovementInfoMiniLayerComponentVo()
      {
         super();
      }
      
      public function set improvementVo(param1:ImprovementVo) : void
      {
         this._improvementVo = param1;
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
      }
      
      public function get improvementGfx() : BriskDynaVo
      {
         return ImprovementLayerProxy.improvementGfx(this._improvementVo.config);
      }
      
      public function get improvementBackground() : BriskDynaVo
      {
         return ImprovementLayerProxy.improvementBackground(this._improvementVo.config.quality);
      }
      
      public function get improvementBadge() : BriskDynaVo
      {
         return ImprovementLayerProxy.improvementQualityBadge(this._improvementVo.config.quality);
      }
      
      public function get name() : String
      {
         return ImprovementLayerProxy.improvementName(this._improvementVo.config,true);
      }
      
      public function get timerDisplayVo() : TimerDisplayComponentVo
      {
         var _loc1_:TimerDisplayComponentVo = new TimerDisplayComponentVo();
         if(this._state == STATE_EXPIRED)
         {
            _loc1_.label = LocaUtils.getDuration(0);
            _loc1_.progress = 0.05;
            _loc1_.barColours = ProgressBarComponent.RED_BAR;
         }
         else if(this._state == STATE_NEW)
         {
            if(this._improvementVo)
            {
               if(this._improvementVo.runtime != -1)
               {
                  _loc1_.label = LocaUtils.getDuration(this._improvementVo.runtime / 1000);
                  _loc1_.progress = 1;
               }
            }
         }
         return _loc1_;
      }
      
      public function get harvestProgressVo() : TimerBarComponentVo
      {
         var _loc1_:TimerBarComponentVo = null;
         if(this._state == STATE_RUNNING && this._currentTime != -1)
         {
            _loc1_ = new TimerBarComponentVo();
            _loc1_.cycleLength = this._improvementVo.config.lifetime;
            _loc1_.startTime = this._improvementVo.startTime;
            _loc1_.targetTime = this._improvementVo.expirationTime;
            _loc1_.currentTime = this._currentTime;
            return _loc1_;
         }
         return null;
      }
      
      public function get showDelete() : Boolean
      {
         return this._state == STATE_EXPIRED;
      }
      
      public function get showTimerDisplay() : Boolean
      {
         if(this._state != STATE_RUNNING)
         {
            return true;
         }
         if(this._state == STATE_RUNNING && this._improvementVo.runtime == -1)
         {
            return true;
         }
         return false;
      }
      
      public function get smallLabelText() : String
      {
         if(this._state == STATE_EXPIRED)
         {
            return ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.expired.label"));
         }
         if(this._state == STATE_NEW || this._state == STATE_RUNNING)
         {
            return ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.equip.label"));
         }
         return "";
      }
      
      public function set currentTime(param1:Number) : void
      {
         this._currentTime = param1;
      }
   }
}

