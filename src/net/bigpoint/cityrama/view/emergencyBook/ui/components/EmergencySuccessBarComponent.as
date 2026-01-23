package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencySuccessBarVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class EmergencySuccessBarComponent extends SkinnableComponent
   {
      
      public static const BUBBLE_CLICKED:String = "MARKER_CLICKED";
      
      private static var _skinParts:Object = {
         "capBubbleLabel":true,
         "progressBar":true,
         "icon":true,
         "capBar":true,
         "advanceBar":true,
         "labelDisplay":true,
         "capBubble":true
      };
      
      private var _data:EmergencySuccessBarVo;
      
      private var _originalData:EmergencySuccessBarVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _label:String = "";
      
      public var progressBar:Group;
      
      public var capBubble:Button;
      
      public var capBar:Group;
      
      public var advanceBar:Group;
      
      public var icon:BriskImageDynaLib;
      
      public var capBubbleLabel:LocaLabel;
      
      public var labelDisplay:LocaLabel;
      
      public function EmergencySuccessBarComponent()
      {
         super();
      }
      
      public function set data(param1:EmergencySuccessBarVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:String = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.capProgress = Math.max(4,100 - this._data.progressCap);
            _loc1_ = ResourceManager.getInstance().getString("rcl.emergencybook.layer" + "","" + "rcl.emergencybook.layer.capbubblelabel");
            this.capBubbleLabel.text = StringUtil.substitute(_loc1_,Math.round(this._data.progressCap));
            this.capBubble.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.emergencyLayer" + "","" + "rcl.tooltips.emergencyLayer.clickToStartScreen");
            this.capProgressVisible = this._data.capVisible;
            this.advanceProgressVisible = this._data.advanceVisible;
         }
      }
      
      public function set successProgress(param1:Number) : void
      {
         param1 = Math.max(4,Math.min(this._data.progressCap,param1));
         if(param1 != this.progressBar.percentWidth)
         {
            TweenMax.to(this.progressBar,0.8,{"percentWidth":param1});
         }
      }
      
      public function set capProgress(param1:Number) : void
      {
         if(param1 != this.capBar.percentWidth)
         {
            TweenMax.to(this.capBar,0.8,{"percentWidth":param1});
         }
      }
      
      public function set capProgressVisible(param1:Boolean) : void
      {
         this.capBar.visible = this.capBar.includeInLayout = param1;
         this.capBubble.visible = this.capBubble.includeInLayout = param1;
         this.capBubbleLabel.visible = this.capBubbleLabel.includeInLayout = param1;
      }
      
      public function set advanceProgressVisible(param1:Boolean) : void
      {
         this.advanceBar.visible = this.advanceBar.includeInLayout = param1;
      }
      
      public function set advanceProgress(param1:Number) : void
      {
         param1 = Math.min(param1,this._data.progressCap);
         TweenMax.to(this.advanceBar,0.8,{"percentWidth":param1});
      }
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         this._label = param1;
         if(this.labelDisplay)
         {
            this.labelDisplay.text = this.label;
         }
      }
      
      public function get data() : EmergencySuccessBarVo
      {
         return this._data;
      }
      
      public function get originalData() : EmergencySuccessBarVo
      {
         return this._originalData;
      }
      
      public function set originalData(param1:EmergencySuccessBarVo) : void
      {
         this._originalData = param1;
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.labelDisplay)
         {
            this.labelDisplay.text = this._label;
         }
         else if(param2 == this.capBubble)
         {
            this.capBubble.addEventListener(MouseEvent.CLICK,this.handleCapClick);
         }
      }
      
      private function handleCapClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(BUBBLE_CLICKED,true));
      }
   }
}

