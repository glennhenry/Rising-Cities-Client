package net.bigpoint.cityrama.view.common.components
{
   import spark.components.BorderContainer;
   import spark.components.Group;
   
   public class StickyNoteComponent extends BorderContainer
   {
      
      private static var _skinParts:Object = {
         "topTape":true,
         "bottomTape":true,
         "leftTape":true,
         "rightTape":true,
         "contentGroup":false
      };
      
      private var _tapeTop:Boolean = false;
      
      private var _tapeBottom:Boolean = false;
      
      private var _tapeLeft:Boolean = false;
      
      private var _tapeRight:Boolean = false;
      
      private var _tapeTopChanged:Boolean = false;
      
      private var _tapeBottomChanged:Boolean = false;
      
      private var _tapeLeftChanged:Boolean = false;
      
      private var _tapeRightChanged:Boolean = false;
      
      public var topTape:Group;
      
      public var bottomTape:Group;
      
      public var leftTape:Group;
      
      public var rightTape:Group;
      
      public function StickyNoteComponent()
      {
         super();
         setStyle("skinClass",this.getStyle("skinClass"));
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
      
      public function get tapeRight() : Boolean
      {
         return this._tapeRight;
      }
      
      public function set tapeRight(param1:Boolean) : void
      {
         if(param1 != this._tapeRight)
         {
            this._tapeRightChanged = true;
            this._tapeRight = param1;
            invalidateProperties();
         }
      }
      
      public function get tapeLeft() : Boolean
      {
         return this._tapeLeft;
      }
      
      public function set tapeLeft(param1:Boolean) : void
      {
         if(param1 != this._tapeLeft)
         {
            this._tapeLeftChanged = true;
            this._tapeLeft = param1;
            invalidateProperties();
         }
      }
      
      public function get tapeBottom() : Boolean
      {
         return this._tapeBottom;
      }
      
      public function set tapeBottom(param1:Boolean) : void
      {
         if(param1 != this._tapeBottom)
         {
            this._tapeBottomChanged = true;
            this._tapeBottom = param1;
            invalidateProperties();
         }
      }
      
      public function get tapeTop() : Boolean
      {
         return this._tapeTop;
      }
      
      public function set tapeTop(param1:Boolean) : void
      {
         if(param1 != this._tapeTop)
         {
            this._tapeTopChanged = true;
            this._tapeTop = param1;
            invalidateProperties();
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         super.setCurrentState(param1,param2);
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._tapeTopChanged)
         {
            this._tapeTopChanged = false;
            this.topTape.visible = this._tapeTop;
            invalidateDisplayList();
         }
         if(this._tapeBottomChanged)
         {
            this._tapeBottomChanged = false;
            this.bottomTape.visible = this._tapeBottom;
            invalidateDisplayList();
         }
         if(this._tapeLeftChanged)
         {
            this._tapeLeftChanged = false;
            this.leftTape.visible = this._tapeLeft;
            invalidateDisplayList();
         }
         if(this._tapeRightChanged)
         {
            this._tapeRightChanged = false;
            this.rightTape.visible = this._tapeRight;
            invalidateDisplayList();
         }
      }
   }
}

