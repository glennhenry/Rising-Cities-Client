package net.bigpoint.cityrama.view.bonusDay.components
{
   import net.bigpoint.cityrama.model.bonusDay.vo.BonusDaySideMenuVo;
   import net.bigpoint.cityrama.view.bonusDay.skins.BonusDayInfoActiveSkin;
   import net.bigpoint.cityrama.view.bonusDay.skins.BonusDayInfoSkin;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.SlimProgressBarTimer;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class BonusDayInfoComponent extends SkinnableComponent
   {
      
      private static var _skinParts:Object = {
         "progressTimerSlim":false,
         "progressTimer":false
      };
      
      public var progressTimer:TimerBarComponent;
      
      public var progressTimerSlim:SlimProgressBarTimer;
      
      private var _data:BonusDaySideMenuVo;
      
      private var _isDirty:Boolean;
      
      public function BonusDayInfoComponent()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:TimerBarComponentVo = null;
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            _loc1_ = new TimerBarComponentVo();
            _loc1_.startTime = this._data.startTime;
            _loc1_.cycleLength = this._data.duration;
            _loc1_.targetTime = this._data.startTime + this._data.duration;
            _loc1_.currentTime = this._data.currentTimeStamp;
            if(this.progressTimerSlim)
            {
               this.progressTimerSlim.data = _loc1_;
            }
            if(this.progressTimer)
            {
               this.progressTimer.data = _loc1_;
            }
         }
      }
      
      public function set data(param1:BonusDaySideMenuVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            if(!this._data.bonusDayActivated)
            {
               setStyle("skinClass",BonusDayInfoSkin);
            }
            else
            {
               setStyle("skinClass",BonusDayInfoActiveSkin);
            }
         }
      }
   }
}

