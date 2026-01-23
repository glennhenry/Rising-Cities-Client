package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.TitleWindow;
   
   public class MediumLayerWindow extends TitleWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkles":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "titleDisplay":false,
         "characterImage":false
      };
      
      private var _showSparkles:Boolean;
      
      private var _characterImageLibName:String = "";
      
      private var _characterImageBmpName:String = "";
      
      public var characterImage:BriskImageDynaLib;
      
      public var sparkles:Group;
      
      public function MediumLayerWindow()
      {
         super();
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == closeButton)
         {
            this.addCloseButtonListeners();
         }
         else if(param2 == this.sparkles)
         {
            param2.visible = this._showSparkles;
         }
         else if(param2 == this.characterImage)
         {
            if(this._characterImageLibName != "")
            {
               (param2 as BriskImageDynaLib).dynaLibName = this._characterImageLibName;
            }
            if(this._characterImageBmpName != "")
            {
               (param2 as BriskImageDynaLib).dynaBmpSourceName = this._characterImageBmpName;
            }
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
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         super.partRemoved(param1,param2);
         if(param2 == closeButton)
         {
            this.removeCloseButtonListeners();
         }
      }
      
      private function handleComplete(param1:Event) : void
      {
         param1.target.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
         invalidateSize();
      }
      
      private function addCloseButtonListeners() : void
      {
         closeButton.addEventListener(MouseEvent.CLICK,this.handleCloseClick);
         closeButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.close");
      }
      
      private function removeCloseButtonListeners() : void
      {
         closeButton.removeEventListener(MouseEvent.CLICK,this.handleCloseClick);
      }
      
      private function handleCloseClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(Event.CLOSE,true));
      }
      
      override public function set title(param1:String) : void
      {
         if(super.title != param1)
         {
            super.title = param1;
            invalidateProperties();
         }
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
      }
      
      public function set showSparkles(param1:Boolean) : void
      {
         this._showSparkles = param1;
         if(this.sparkles)
         {
            this.sparkles.visible = param1;
         }
      }
      
      public function set characterImageBmpName(param1:String) : void
      {
         this._characterImageBmpName = param1;
      }
      
      public function set characterImageLibName(param1:String) : void
      {
         this._characterImageLibName = param1;
      }
   }
}

