package net.bigpoint.cityrama.view.common.components
{
   import com.greensock.TweenMax;
   import flashx.textLayout.conversion.TextConverter;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.util.LocaUtils;
   import spark.components.RichText;
   import spark.filters.GlowFilter;
   
   public class LocaLabel extends RichText
   {
      
      private var _tempText:String;
      
      private var _typeWriterEffect:Boolean;
      
      private var _textWriterPointer:int;
      
      private var _useOutline:Boolean;
      
      private var _outlineColor:uint = 0;
      
      private var _outlineFilter:GlowFilter;
      
      private var _outlineAlpha:Number = 0.6;
      
      public function LocaLabel()
      {
         super();
      }
      
      override public function set text(param1:String) : void
      {
         if(param1 != this._tempText)
         {
            this._tempText = param1;
            this._tempText = LocaUtils.checkGlobalWildCard(this._tempText);
            this._tempText = LocaUtils.removePossibleLinks(this._tempText);
            this.textFlow = TextConverter.importToFlow("",TextConverter.TEXT_FIELD_HTML_FORMAT);
            if(this._typeWriterEffect)
            {
               this._textWriterPointer = 0;
               TweenMax.delayedCall(0.5,this.updateTextfield);
            }
            else
            {
               this.textFlow = TextConverter.importToFlow(this._tempText,TextConverter.TEXT_FIELD_HTML_FORMAT);
            }
         }
      }
      
      private function updateTextfield() : void
      {
         ++this._textWriterPointer;
         var _loc1_:String = "";
         var _loc2_:int = 0;
         while(_loc2_ < this._textWriterPointer)
         {
            if(this._tempText.charAt(_loc2_) == null)
            {
               return;
            }
            _loc1_ += this._tempText.charAt(_loc2_);
            _loc2_++;
         }
         this.textFlow = TextConverter.importToFlow(_loc1_,TextConverter.TEXT_FIELD_HTML_FORMAT);
         TweenMax.delayedCall(0.035,this.updateTextfield);
      }
      
      public function set typeWriterEffect(param1:Boolean) : void
      {
         this._typeWriterEffect = param1;
      }
      
      public function get useOutline() : Boolean
      {
         return this._useOutline;
      }
      
      private function get outlineFilter() : GlowFilter
      {
         if(this._outlineFilter == null)
         {
            this._outlineFilter = FilterUtils.createOutlineFilter(this.outlineColor,3,false,this.outlineAlpha);
         }
         return this._outlineFilter;
      }
      
      private function updateFilter() : void
      {
         if(this.useOutline)
         {
            this.outlineFilter.color = this._outlineColor;
            this.outlineFilter.alpha = this._outlineAlpha;
            filters = [this.outlineFilter];
         }
         else
         {
            filters = [];
         }
      }
      
      public function set useOutline(param1:Boolean) : void
      {
         if(this._useOutline != param1)
         {
            this._useOutline = param1;
            this.updateFilter();
         }
      }
      
      public function get outlineColor() : uint
      {
         return this._outlineColor;
      }
      
      public function set outlineColor(param1:uint) : void
      {
         if(this._outlineColor != param1)
         {
            this._outlineColor = param1;
            this.updateFilter();
         }
      }
      
      public function set outlineAlpha(param1:Number) : void
      {
         if(this._outlineAlpha != param1)
         {
            this._outlineAlpha = param1;
            this.updateFilter();
         }
      }
      
      public function get outlineAlpha() : Number
      {
         return this._outlineAlpha;
      }
   }
}

