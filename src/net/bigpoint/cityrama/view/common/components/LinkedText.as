package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.ui.Mouse;
   import flashx.textLayout.conversion.TextConverter;
   import flashx.textLayout.elements.FlowElement;
   import flashx.textLayout.elements.FlowGroupElement;
   import flashx.textLayout.elements.LinkElement;
   import flashx.textLayout.events.FlowElementMouseEvent;
   import flashx.textLayout.formats.TextLayoutFormat;
   import net.bigpoint.cityrama.model.field.FieldCursorProxy;
   import net.bigpoint.cityrama.view.common.events.LinkedTextEvent;
   import spark.components.RichEditableText;
   import spark.utils.TextFlowUtil;
   
   public class LinkedText extends RichEditableText
   {
      
      public static const LINK_START_PLAYFIELDITEM:String = "{linkStart_playfieldItem}";
      
      public static const LINK_END_PLAYFIELDITEM:String = "{linkEnd_playfieldItem}";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         LINK_START_PLAYFIELDITEM = "{linkStart_playfieldItem}";
         if(_loc2_)
         {
            addr002c:
            LINK_END_PLAYFIELDITEM = "{linkEnd_playfieldItem}";
         }
         return;
      }
      §§goto(addr002c);
      
      private var _links:Vector.<LinkElement>;
      
      private var _linkParameter:Array;
      
      private var _linkNormalFormat:TextLayoutFormat;
      
      private var _linkHoverFormat:TextLayoutFormat;
      
      private var _stylePropertyChanged:Boolean;
      
      public function LinkedText()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(!_loc1_)
            {
               mouseChildren = false;
               if(_loc2_)
               {
                  editable = false;
                  if(!(_loc1_ && _loc1_))
                  {
                     selectable = false;
                     if(_loc2_)
                     {
                        useHandCursor = false;
                        addr005e:
                        if(!_loc1_)
                        {
                           buttonMode = false;
                           if(_loc2_ || _loc2_)
                           {
                              addr008c:
                              this.setFocus();
                              if(_loc2_)
                              {
                                 addr0097:
                                 addEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStageHandler);
                              }
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr005e);
            }
            addr00a6:
            return;
         }
         §§goto(addr0097);
      }
      
      private static function replaceLinks(param1:String) : String
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:RegExp = null;
         var _loc3_:String = null;
         if(_loc4_)
         {
            §§push(param1);
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               §§push(LINK_START_PLAYFIELDITEM);
               if(_loc4_)
               {
                  if(§§pop().indexOf(§§pop()) != -1)
                  {
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        _loc2_ = /{linkStart_playfieldItem}/g;
                        if(_loc4_)
                        {
                           _loc3_ = "<a href=\'LINK_TYPE_PLAYFIELDITEM\' style=\'cursor: default\' target=\'null\'>";
                           if(!_loc5_)
                           {
                              §§push(param1);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 §§push(§§pop().replace(_loc2_,_loc3_));
                              }
                              param1 = §§pop();
                           }
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr00a8);
                  }
                  addr0094:
                  §§push(param1);
                  if(!_loc5_)
                  {
                     addr009e:
                     addr009b:
                     if(§§pop().indexOf(LINK_END_PLAYFIELDITEM) != -1)
                     {
                        _loc2_ = /{linkEnd_playfieldItem}/g;
                        addr00a8:
                        if(!_loc5_)
                        {
                           _loc3_ = "</a>";
                           if(_loc4_ || Boolean(param1))
                           {
                              §§push(param1);
                              if(!_loc5_)
                              {
                                 §§push(§§pop().replace(_loc2_,_loc3_));
                              }
                              param1 = §§pop();
                           }
                        }
                     }
                     return param1;
                  }
               }
               §§goto(addr009e);
            }
            §§goto(addr009b);
         }
         §§goto(addr00a8);
      }
      
      private static function findLinkElement(param1:FlowGroupElement, param2:Vector.<LinkElement>) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:FlowElement = null;
         var _loc6_:FlowGroupElement = null;
         var _loc3_:Array = [];
         var _loc4_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_ && Boolean(_loc3_))
            {
               break;
            }
            if(§§pop() >= param1.numChildren)
            {
               if(_loc7_)
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                     _loc4_ = §§pop();
                     if(_loc7_)
                     {
                        while(true)
                        {
                           §§push(_loc4_);
                           break loop0;
                        }
                        addr00fe:
                     }
                     §§goto(addr0107);
                  }
                  break;
               }
               §§goto(addr00fe);
            }
            else
            {
               _loc5_ = param1.getChildAt(_loc4_);
               §§push(_loc5_ is LinkElement);
               if(_loc7_ || Boolean(_loc3_))
               {
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        param2.push(_loc5_ as LinkElement);
                        if(_loc8_)
                        {
                           addr008d:
                           _loc3_.push(_loc5_);
                           if(!_loc7_)
                           {
                              continue;
                           }
                        }
                     }
                  }
                  else
                  {
                     addr0083:
                     if(_loc5_ is FlowGroupElement)
                     {
                        if(!_loc7_)
                        {
                           continue;
                        }
                        §§goto(addr008d);
                     }
                  }
                  _loc4_++;
                  continue;
               }
               §§goto(addr0083);
            }
         }
         while(§§pop() < _loc3_.length)
         {
            _loc6_ = _loc3_[_loc4_];
            if(!_loc8_)
            {
               findLinkElement(_loc6_,param2);
               if(!_loc8_)
               {
                  _loc4_++;
               }
            }
            §§push(_loc4_);
         }
         addr0107:
      }
      
      private static function setNormalCursor() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || LinkedText)
         {
            Mouse.cursor = FieldCursorProxy.CURSOR_NORMAL;
            if(_loc2_ || _loc1_)
            {
               Mouse.hide();
               if(_loc2_ || LinkedText)
               {
                  addr0055:
                  Mouse.show();
               }
               §§goto(addr005c);
            }
            §§goto(addr0055);
         }
         addr005c:
      }
      
      override public function set text(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:LinkElement = null;
         if(_loc8_)
         {
            §§push(param1);
            if(_loc8_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc8_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(_loc8_ || _loc2_)
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           §§goto(addr00a1);
                        }
                        §§goto(addr008a);
                     }
                  }
               }
               §§goto(addr0065);
            }
            addr00a1:
            §§goto(addr0053);
         }
         addr0053:
         §§push(param1);
         if(!(_loc7_ && Boolean(param1)))
         {
            addr0065:
            if(§§pop() == "")
            {
               if(!_loc7_)
               {
                  this.removeLinkListener();
                  if(_loc8_ || _loc3_)
                  {
                     return;
                  }
               }
            }
            addr008a:
            §§push(replaceLinks(param1));
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop());
            }
         }
         param1 = §§pop();
         if(_loc8_ || _loc3_)
         {
            textFlow = TextFlowUtil.importFromString(param1,TextConverter.TEXT_FIELD_HTML_FORMAT);
            if(_loc8_)
            {
               this._links = new Vector.<LinkElement>();
               if(!(_loc7_ && Boolean(this)))
               {
                  findLinkElement(textFlow,this._links);
               }
            }
         }
         var _loc2_:uint = uint(this.getStyle("linkNormalColor"));
         var _loc3_:uint = uint(this.getStyle("linkHoverColor"));
         if(_loc8_ || Boolean(_loc2_))
         {
            §§push(_loc2_);
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               if(§§pop())
               {
                  if(_loc8_)
                  {
                     this._linkNormalFormat = new TextLayoutFormat();
                     if(!_loc7_)
                     {
                        this._linkNormalFormat.color = _loc2_;
                        if(!_loc7_)
                        {
                           addr0160:
                           addr0161:
                           if(_loc3_)
                           {
                              if(!_loc7_)
                              {
                                 addr016b:
                                 this._linkHoverFormat = new TextLayoutFormat();
                                 if(_loc8_)
                                 {
                                    addr017c:
                                    this._linkHoverFormat.color = _loc3_;
                                 }
                                 §§goto(addr0184);
                              }
                              §§goto(addr017c);
                           }
                           §§goto(addr0184);
                        }
                        §§goto(addr016b);
                     }
                     §§goto(addr0184);
                  }
               }
               §§goto(addr0160);
            }
            §§goto(addr0161);
         }
         addr0184:
         for each(_loc4_ in this._links)
         {
            _loc4_.addEventListener(FlowElementMouseEvent.CLICK,this.handleClickEvent,false,0,true);
            if(_loc8_)
            {
               _loc4_.addEventListener(FlowElementMouseEvent.ROLL_OVER,this.handleMouseOver,false,0,true);
               if(!(_loc8_ || Boolean(_loc2_)))
               {
                  continue;
               }
               _loc4_.addEventListener(FlowElementMouseEvent.ROLL_OUT,this.handleMouseOut,false,0,true);
               if(_loc8_ || Boolean(_loc3_))
               {
                  addr01f8:
                  if(this._linkNormalFormat)
                  {
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        _loc4_.linkNormalFormat = this._linkNormalFormat;
                        addr020e:
                        if(!_loc7_)
                        {
                           addr022c:
                           if(!this._linkHoverFormat)
                           {
                              continue;
                           }
                           if(_loc7_ && Boolean(_loc3_))
                           {
                              continue;
                           }
                        }
                     }
                     _loc4_.linkHoverFormat = this._linkHoverFormat;
                     continue;
                  }
                  §§goto(addr022c);
               }
               §§goto(addr020e);
            }
            §§goto(addr01f8);
         }
      }
      
      private function handleMouseOut(param1:FlowElementMouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            param1.preventDefault();
            if(!_loc3_)
            {
               §§goto(addr0034);
            }
            §§goto(addr0046);
         }
         addr0034:
         param1.stopImmediatePropagation();
         if(!(_loc3_ && Boolean(param1)))
         {
            addr0046:
            setNormalCursor();
            if(!_loc3_)
            {
               param1.flowElement.linkHoverFormat = this._linkNormalFormat;
            }
         }
      }
      
      private function handleMouseOver(param1:FlowElementMouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.preventDefault();
            if(!_loc3_)
            {
               param1.stopImmediatePropagation();
               if(!(_loc3_ && Boolean(this)))
               {
                  addr003d:
                  setNormalCursor();
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0051:
                     param1.flowElement.linkHoverFormat = this._linkHoverFormat;
                  }
                  §§goto(addr005c);
               }
               §§goto(addr0051);
            }
            addr005c:
            return;
         }
         §§goto(addr003d);
      }
      
      private function handleClickEvent(param1:FlowElementMouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.preventDefault();
            if(!(_loc3_ && _loc2_))
            {
               param1.stopImmediatePropagation();
               if(!_loc3_)
               {
                  setNormalCursor();
                  if(!_loc3_)
                  {
                     addr0040:
                     §§push(param1.flowElement is LinkElement);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(this._linkParameter);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() == null);
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    var _temp_4:* = §§pop();
                                    §§push(_temp_4);
                                    if(!_temp_4)
                                    {
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr0094:
                                          §§pop();
                                          if(!_loc3_)
                                          {
                                             §§push(this._linkParameter);
                                             if(!_loc3_)
                                             {
                                                addr00a8:
                                                if(§§pop().length == 0)
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      addr00b9:
                                                      this._linkParameter = [];
                                                      if(_loc2_ || Boolean(param1))
                                                      {
                                                         addr00d0:
                                                         this._linkParameter.length = this._links.length;
                                                         if(!_loc3_)
                                                         {
                                                            dispatchEvent(new LinkedTextEvent(LinkedTextEvent.LINK_CLICKED,true,true,LinkElement(param1.flowElement).href,[this._linkParameter[this._links.indexOf(LinkElement(param1.flowElement))]]));
                                                            addr00dd:
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr012a);
                                                }
                                                §§goto(addr00dd);
                                             }
                                             §§goto(addr00d0);
                                          }
                                          §§goto(addr012a);
                                       }
                                    }
                                 }
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00b9);
                        }
                        addr012a:
                        return;
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr00b9);
               }
            }
         }
         §§goto(addr0040);
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.removeLinkListener();
         }
      }
      
      private function removeLinkListener() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:LinkElement = null;
         if(_loc5_)
         {
            if(this._links)
            {
               addr0028:
               var _loc3_:* = this._links;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc5_ || _loc3_)
                  {
                     _loc1_.removeEventListener(FlowElementMouseEvent.CLICK,this.handleClickEvent);
                     if(!(_loc4_ && Boolean(_loc1_)))
                     {
                        _loc1_.removeEventListener(FlowElementMouseEvent.ROLL_OVER,this.handleMouseOver);
                        if(_loc4_ && Boolean(this))
                        {
                           continue;
                        }
                     }
                  }
                  _loc1_.removeEventListener(FlowElementMouseEvent.ROLL_OUT,this.handleMouseOut);
               }
            }
            return;
         }
         §§goto(addr0028);
      }
      
      override public function styleChanged(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.styleChanged(param1);
            if(_loc2_ || Boolean(param1))
            {
               §§goto(addr002a);
            }
            §§goto(addr0089);
         }
         addr002a:
         §§push(param1);
         if(_loc2_)
         {
            §§push("linkNormalColor");
            if(!_loc3_)
            {
               §§push(§§pop() == §§pop());
               if(!(_loc3_ && _loc3_))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!_loc3_)
                     {
                        addr006b:
                        §§pop();
                        if(_loc2_)
                        {
                           §§goto(addr0076);
                        }
                        §§goto(addr007f);
                     }
                  }
                  addr0076:
                  §§goto(addr0075);
               }
               §§goto(addr006b);
            }
            addr0075:
            §§goto(addr0072);
         }
         addr0072:
         if(param1 == "linkHoverColor")
         {
            if(!_loc3_)
            {
               addr007f:
               this._stylePropertyChanged = true;
               if(!_loc3_)
               {
                  addr0089:
                  invalidateDisplayList();
               }
            }
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:LinkElement = null;
         if(!(_loc9_ && Boolean(this)))
         {
            if(this._stylePropertyChanged == true)
            {
               if(_loc8_ || Boolean(this))
               {
                  this._stylePropertyChanged = false;
                  if(_loc8_)
                  {
                     §§push(uint(this.getStyle("linkNormalColor")));
                     if(_loc8_ || Boolean(this))
                     {
                        _loc3_ = §§pop();
                        if(_loc8_)
                        {
                           §§push(uint(this.getStyle("linkHoverColor")));
                           if(!_loc9_)
                           {
                              _loc4_ = §§pop();
                              if(_loc8_ || Boolean(param2))
                              {
                                 addr009e:
                                 §§push(_loc3_);
                                 if(!_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc8_ || Boolean(param2))
                                       {
                                          addr00b7:
                                          this._linkNormalFormat.color = _loc3_;
                                          if(!_loc9_)
                                          {
                                             addr00c5:
                                             addr00c7:
                                             if(_loc4_)
                                             {
                                                if(!(_loc9_ && Boolean(param1)))
                                                {
                                                   addr00d9:
                                                   this._linkHoverFormat.color = _loc4_;
                                                }
                                             }
                                             §§goto(addr00e2);
                                          }
                                          §§goto(addr00d9);
                                       }
                                       §§goto(addr00e2);
                                    }
                                    §§goto(addr00c5);
                                 }
                                 §§goto(addr00c7);
                              }
                              addr00e2:
                              for each(_loc5_ in this._links)
                              {
                                 if(!_loc9_)
                                 {
                                    if(this._linkNormalFormat)
                                    {
                                       if(!_loc9_)
                                       {
                                          _loc5_.linkNormalFormat = this._linkNormalFormat;
                                          if(!_loc9_)
                                          {
                                             addr0120:
                                             if(!this._linkHoverFormat)
                                             {
                                                continue;
                                             }
                                             if(_loc9_ && Boolean(_loc3_))
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                       _loc5_.linkHoverFormat = this._linkHoverFormat;
                                       continue;
                                    }
                                 }
                                 §§goto(addr0120);
                              }
                              if(_loc8_)
                              {
                                 addr015d:
                                 super.updateDisplayList(param1,param2);
                              }
                              return;
                           }
                           §§goto(addr00c7);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr009e);
            }
            §§goto(addr015d);
         }
         §§goto(addr00b7);
      }
      
      public function set linkParameter(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._linkParameter = param1;
         }
      }
      
      public function set linksEnabled(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.mouseEnabled = param1;
         }
      }
   }
}

