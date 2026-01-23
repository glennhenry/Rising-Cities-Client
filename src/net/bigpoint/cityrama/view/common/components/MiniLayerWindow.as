package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.TitleWindow;
   
   public class MiniLayerWindow extends TitleWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      public var sparkle:BriskImageDynaLib;
      
      public var attentionSign:BriskImageDynaLib;
      
      private var _showAttentionSign:Boolean = false;
      
      private var _showSparkle:Boolean = false;
      
      public function MiniLayerWindow()
      {
         super();
      }
      
      protected static function getString(param1:String, param2:String, param3:Array = null) : String
      {
         return LocaUtils.getString(param1,param2,param3);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.sparkle)
         {
            this.sparkle.visible = this._showSparkle;
            this.sparkle.includeInLayout = this._showSparkle;
         }
         if(param2 == this.attentionSign)
         {
            this.attentionSign.visible = this._showAttentionSign;
            this.attentionSign.includeInLayout = this._showAttentionSign;
         }
         if(param2 == closeButton)
         {
            this.addCloseButtonListeners();
         }
         if(param2 is BriskMCDynaLib)
         {
            (param2 as BriskMCDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
         }
         if(param2 is BriskImageDynaLib)
         {
            (param2 as BriskImageDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
         }
      }
      
      public function get showAttentionSign() : Boolean
      {
         return this._showAttentionSign;
      }
      
      public function set showAttentionSign(param1:Boolean) : void
      {
         this._showAttentionSign = param1;
         if(this.attentionSign)
         {
            this.attentionSign.visible = param1;
            this.attentionSign.includeInLayout = param1;
            invalidateDisplayList();
         }
      }
      
      public function get showSparkle() : Boolean
      {
         return this._showSparkle;
      }
      
      public function set showSparkle(param1:Boolean) : void
      {
         this._showSparkle = param1;
         if(this.sparkle)
         {
            this.sparkle.visible = param1;
            this.sparkle.includeInLayout = param1;
            invalidateDisplayList();
         }
      }
      
      private function handleComplete(param1:Event) : void
      {
         param1.target.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
         invalidateSize();
      }
      
      override public function set title(param1:String) : void
      {
         if(super.title != param1)
         {
            super.title = param1;
            invalidateProperties();
         }
      }
      
      private function addCloseButtonListeners() : void
      {
         closeButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.exit"));
         closeButton.addEventListener(MouseEvent.CLICK,this.handleCloseClick);
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         super.partRemoved(param1,param2);
         if(param2 == closeButton)
         {
            this.removeCloseButtonListeners();
         }
      }
      
      private function removeCloseButtonListeners() : void
      {
         closeButton.removeEventListener(MouseEvent.CLICK,this.handleCloseClick);
      }
      
      override public function get styleName() : Object
      {
         return super.styleName;
      }
      
      override public function set styleName(param1:Object) : void
      {
         if(param1 != super.styleName)
         {
            super.styleName = param1;
            invalidateDisplayList();
         }
      }
      
      private function handleCloseClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(Event.CLOSE,true));
      }
   }
}

