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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function set text(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 != this._tempText)
            {
               if(!_loc2_)
               {
                  this._tempText = param1;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0038:
                     this._tempText = LocaUtils.checkGlobalWildCard(this._tempText);
                     if(_loc3_ || Boolean(param1))
                     {
                        addr0053:
                        this._tempText = LocaUtils.removePossibleLinks(this._tempText);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr007c);
                        }
                        §§goto(addr00ca);
                     }
                  }
                  addr007c:
                  this.textFlow = TextConverter.importToFlow("",TextConverter.TEXT_FIELD_HTML_FORMAT);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(this._typeWriterEffect)
                     {
                        if(_loc3_)
                        {
                           this._textWriterPointer = 0;
                           if(!(_loc2_ && Boolean(param1)))
                           {
                              addr00ca:
                              TweenMax.delayedCall(0.5,this.updateTextfield);
                              if(_loc2_ && Boolean(param1))
                              {
                              }
                           }
                           §§goto(addr00fd);
                        }
                        §§goto(addr00ca);
                     }
                     else
                     {
                        this.textFlow = TextConverter.importToFlow(this._tempText,TextConverter.TEXT_FIELD_HTML_FORMAT);
                     }
                  }
                  §§goto(addr00fd);
               }
               §§goto(addr0053);
            }
            addr00fd:
            return;
         }
         §§goto(addr0038);
      }
      
      private function updateTextfield() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            var _loc3_:* = this;
            §§push(_loc3_._textWriterPointer);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || _loc2_)
            {
               _loc3_._textWriterPointer = _loc4_;
            }
         }
         var _loc1_:* = "";
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this._textWriterPointer)
            {
               if(_loc6_ || Boolean(this))
               {
                  addr00e2:
                  this.textFlow = TextConverter.importToFlow(_loc1_,TextConverter.TEXT_FIELD_HTML_FORMAT);
                  if(_loc5_)
                  {
                     break;
                  }
               }
               TweenMax.delayedCall(0.035,this.updateTextfield);
               break;
            }
            §§push(this._tempText);
            if(_loc6_ || Boolean(this))
            {
               if(§§pop().charAt(_loc2_) == null)
               {
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     return;
                  }
               }
               else
               {
                  addr00a8:
                  §§push(_loc1_);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop() + this._tempText.charAt(_loc2_));
                  }
                  _loc1_ = §§pop();
                  if(!(_loc6_ || Boolean(_loc1_)))
                  {
                     break;
                  }
                  _loc2_++;
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               §§goto(addr00e2);
            }
            §§goto(addr00a8);
            §§goto(addr00e2);
         }
      }
      
      public function set typeWriterEffect(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._typeWriterEffect = param1;
         }
      }
      
      public function get useOutline() : Boolean
      {
         return this._useOutline;
      }
      
      private function get outlineFilter() : GlowFilter
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._outlineFilter == null)
            {
               if(!_loc2_)
               {
                  addr002d:
                  this._outlineFilter = FilterUtils.createOutlineFilter(this.outlineColor,3,false,this.outlineAlpha);
               }
            }
            return this._outlineFilter;
         }
         §§goto(addr002d);
      }
      
      private function updateFilter() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this.useOutline)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.outlineFilter.color = this._outlineColor;
                  if(!_loc2_)
                  {
                     this.outlineFilter.alpha = this._outlineAlpha;
                     if(_loc1_ || Boolean(this))
                     {
                        addr006e:
                        filters = [this.outlineFilter];
                        if(_loc2_)
                        {
                        }
                     }
                  }
               }
            }
            else
            {
               filters = [];
            }
            return;
         }
         §§goto(addr006e);
      }
      
      public function set useOutline(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._useOutline != param1)
            {
               if(_loc2_)
               {
                  addr0030:
                  this._useOutline = param1;
                  if(_loc2_ || _loc2_)
                  {
                     addr0042:
                     this.updateFilter();
                  }
                  §§goto(addr0047);
               }
               §§goto(addr0042);
            }
            addr0047:
            return;
         }
         §§goto(addr0030);
      }
      
      public function get outlineColor() : uint
      {
         return this._outlineColor;
      }
      
      public function set outlineColor(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(this._outlineColor != param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr0042:
                  this._outlineColor = param1;
                  if(!_loc2_)
                  {
                     this.updateFilter();
                  }
               }
            }
            return;
         }
         §§goto(addr0042);
      }
      
      public function set outlineAlpha(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._outlineAlpha != param1)
            {
               if(_loc3_)
               {
                  this._outlineAlpha = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0043:
                     this.updateFilter();
                  }
                  §§goto(addr0048);
               }
               §§goto(addr0043);
            }
            addr0048:
            return;
         }
         §§goto(addr0043);
      }
      
      public function get outlineAlpha() : Number
      {
         return this._outlineAlpha;
      }
   }
}

