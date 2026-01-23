package net.bigpoint.cityrama.view.assistants.ui.components
{
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolViewVo;
   import net.bigpoint.cityrama.view.assistants.ui.skins.PatrolRunningInfoSkin;
   import net.bigpoint.cityrama.view.assistants.ui.skins.PatrolVacantInfoSkin;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class PatrolInfoComponent extends SkinnableComponent
   {
      
      private static var _skinParts:Object = {
         "infoText":false,
         "header":true,
         "progressTimer":false
      };
      
      public var header:LocaLabel;
      
      public var infoText:LocaLabel;
      
      public var progressTimer:TimerBarComponent;
      
      private var _data:PatrolViewVo;
      
      private var _isDirty:Boolean;
      
      public function PatrolInfoComponent()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:String = null;
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            if(this.header)
            {
               this.header.text = this._data.name;
            }
            if(this._data.isActive)
            {
               if(this.infoText)
               {
                  _loc1_ = ResourceManager.getInstance().getString(String("rcl.miniLayer.streetPatrol"),String("rcl.miniLayer.streetPatrol.info.running"));
                  this.infoText.text = StringUtil.substitute(_loc1_,this._data.emergencyRate);
               }
               if(this.progressTimer)
               {
                  this.progressTimer.data = this._data.timerVo;
               }
            }
            else if(this.infoText)
            {
               this.infoText.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.streetPatrol"),String("rcl.miniLayer.streetPatrol.info.vacant"));
            }
         }
      }
      
      public function set data(param1:PatrolViewVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            if(this._data.isActive)
            {
               setStyle("skinClass",PatrolRunningInfoSkin);
            }
            else
            {
               setStyle("skinClass",PatrolVacantInfoSkin);
            }
         }
         invalidateProperties();
      }
   }
}

