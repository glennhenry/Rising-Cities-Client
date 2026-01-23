package net.bigpoint.cityrama.view.featureScreens.ui.components
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureScreenStepDataVo;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import spark.components.Group;
   import spark.components.supportClasses.ItemRenderer;
   
   public class FeatureScreenItemRenderer extends ItemRenderer
   {
      
      private var _951530617content:Group;
      
      private var _1926591367stepHeader:LocaLabel;
      
      private var _702194298stepHeaderGroup:Group;
      
      private var _1324487151stepImage:BriskMCDynaLib;
      
      private var _1428519449stepText:LocaLabel;
      
      private var _2013131750stepTextGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _stepData:FeatureScreenStepDataVo;
      
      private var _titleContainer:DisplayObject;
      
      private var _textContainer:DisplayObject;
      
      private var _titleString:String;
      
      private var _textString:String;
      
      private var _isDirty:Boolean;
      
      private var _textSet:Boolean;
      
      public function FeatureScreenItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc1_))
               {
                  addr004c:
                  this.autoDrawBackground = false;
                  if(!_loc1_)
                  {
                     this.width = 230;
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this.mxmlContent = [this._FeatureScreenItemRenderer_Group1_i()];
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               addr0049:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0049);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(param1 is FeatureScreenStepDataVo)
            {
               if(!_loc3_)
               {
                  addr002c:
                  if(param1 != this._stepData)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        super.data = param1;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0060:
                           this._stepData = param1 as FeatureScreenStepDataVo;
                           if(!(_loc3_ && _loc2_))
                           {
                              this._isDirty = true;
                              if(!_loc3_)
                              {
                                 §§goto(addr008a);
                              }
                           }
                        }
                        §§goto(addr009c);
                     }
                     addr008a:
                     this._textSet = false;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr009c:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0060);
            }
            addr00a1:
            return;
         }
         §§goto(addr002c);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.commitProperties();
            if(!_loc1_)
            {
               §§push(this._stepData);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop());
                  if(_loc2_ || _loc2_)
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(_loc2_)
                        {
                           addr0051:
                           §§pop();
                           if(_loc2_ || _loc2_)
                           {
                              addr005f:
                              §§push(this._isDirty);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(§§pop());
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§goto(addr007e);
                                 }
                                 §§goto(addr00c1);
                              }
                              §§goto(addr013d);
                           }
                           §§goto(addr00d2);
                        }
                        §§goto(addr00c1);
                     }
                     addr007e:
                     if(§§pop())
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           this.content.visible = false;
                           if(_loc2_ || _loc2_)
                           {
                              addr00a3:
                              this._isDirty = false;
                              if(_loc2_ || _loc1_)
                              {
                                 addr00b5:
                                 addr00b9:
                                 §§push(this._stepData.isEmpty);
                                 if(!_loc1_)
                                 {
                                    addr00c1:
                                    if(!§§pop())
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          addr00d2:
                                          §§push(this.stepImage);
                                          if(!_loc1_)
                                          {
                                             §§push(this._stepData);
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§push(§§pop().dynaLibName);
                                                if(!(_loc1_ && Boolean(this)))
                                                {
                                                   §§pop().dynaLibName = §§pop();
                                                   if(_loc2_)
                                                   {
                                                      addr010c:
                                                      §§push(this.stepImage);
                                                      if(!_loc1_)
                                                      {
                                                         addr0119:
                                                         §§push(this._stepData.dynaMCName);
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            §§pop().dynaMCSourceName = §§pop();
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               addr013d:
                                                               if(!this._textSet)
                                                               {
                                                                  if(!(_loc1_ && Boolean(this)))
                                                                  {
                                                                     addr014e:
                                                                     §§push(this.stepImage);
                                                                     if(_loc2_)
                                                                     {
                                                                        addr015d:
                                                                        §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.setTextPosition);
                                                                        if(!_loc1_)
                                                                        {
                                                                           addr0169:
                                                                           this._titleString = this._stepData.title;
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              this._textString = this._stepData.text;
                                                                              if(_loc1_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01d1:
                                                                        §§pop().dynaMCSourceName = null;
                                                                        addr01d0:
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           addr01e1:
                                                                           this.visible = false;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr01e5);
                                                               }
                                                               §§goto(addr0169);
                                                            }
                                                            §§goto(addr01e5);
                                                         }
                                                         §§goto(addr015d);
                                                      }
                                                      else
                                                      {
                                                         addr01a5:
                                                         §§push(null);
                                                         if(!(_loc1_ && Boolean(this)))
                                                         {
                                                            §§pop().dynaLibName = §§pop();
                                                            if(_loc2_ || Boolean(this))
                                                            {
                                                               §§goto(addr01d0);
                                                               §§push(this.stepImage);
                                                            }
                                                            §§goto(addr01e1);
                                                         }
                                                      }
                                                      §§goto(addr01d1);
                                                   }
                                                   §§goto(addr01e1);
                                                }
                                                §§goto(addr015d);
                                             }
                                             §§goto(addr0119);
                                          }
                                          §§goto(addr01a5);
                                       }
                                       §§goto(addr010c);
                                    }
                                    else
                                    {
                                       §§push(this.stepImage);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§goto(addr01a5);
                                       }
                                    }
                                    §§goto(addr01d0);
                                 }
                                 §§goto(addr013d);
                              }
                              §§goto(addr0169);
                           }
                           §§goto(addr014e);
                        }
                        §§goto(addr00b5);
                     }
                     addr01e5:
                     return;
                  }
                  §§goto(addr0051);
               }
               §§goto(addr00b9);
            }
            §§goto(addr00a3);
         }
         §§goto(addr005f);
      }
      
      private function setTextPosition(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.stepImage);
            if(_loc2_ || Boolean(this))
            {
               §§pop().removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.setTextPosition);
               if(_loc2_ || Boolean(this))
               {
                  this._titleContainer = this.stepImage.movieClip.getChildByName("titleBox");
                  if(!_loc3_)
                  {
                     this._textContainer = this.stepImage.movieClip.getChildByName("textBox");
                     if(!(_loc3_ && _loc2_))
                     {
                        if(this._titleContainer)
                        {
                           if(_loc2_)
                           {
                              addr008e:
                              this._titleContainer.visible = false;
                              if(!_loc3_)
                              {
                                 this._titleContainer.alpha = 0;
                                 if(!_loc3_)
                                 {
                                    addr00a8:
                                    if(this._textContainer)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          this._textContainer.visible = false;
                                          if(_loc2_ || Boolean(this))
                                          {
                                             this._textContainer.alpha = 0;
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr00e7:
                                                §§push(this.stepImage);
                                                if(_loc2_ || _loc3_)
                                                {
                                                   §§pop().invalidateDisplayList();
                                                   if(_loc2_)
                                                   {
                                                      addr0101:
                                                      §§push(this._titleString);
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc2_)
                                                         {
                                                            var _temp_10:* = §§pop();
                                                            §§push(_temp_10);
                                                            §§push(_temp_10);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     §§pop();
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(Boolean(this._titleContainer));
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr0147:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc3_ && Boolean(param1)))
                                                                              {
                                                                                 this.stepHeaderGroup.width = this._titleContainer.width;
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    this.stepHeaderGroup.height = this._titleContainer.height;
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       this.stepHeaderGroup.x = this._titleContainer.x;
                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                       {
                                                                                          addr01af:
                                                                                          this.stepHeaderGroup.y = this._titleContainer.y;
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(this.stepHeader);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§pop().text = this._titleString;
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr01e0);
                                                                                                }
                                                                                                §§goto(addr0288);
                                                                                             }
                                                                                             addr01e0:
                                                                                             this.stepHeader.visible = true;
                                                                                             addr01dc:
                                                                                             if(!(_loc3_ && Boolean(param1)))
                                                                                             {
                                                                                                addr01f0:
                                                                                                addr01f4:
                                                                                                §§push(Boolean(this._textString));
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr01fa:
                                                                                                   var _temp_19:* = §§pop();
                                                                                                   addr01fb:
                                                                                                   §§push(_temp_19);
                                                                                                   if(_temp_19)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         addr0204:
                                                                                                         §§pop();
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr020f);
                                                                                                         }
                                                                                                         §§goto(addr0218);
                                                                                                      }
                                                                                                   }
                                                                                                   addr020f:
                                                                                                   §§goto(addr020a);
                                                                                                }
                                                                                                §§goto(addr0204);
                                                                                             }
                                                                                             addr020a:
                                                                                             if(Boolean(this._textContainer))
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr0218:
                                                                                                   this.stepTextGroup.width = this._textContainer.width;
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr0229:
                                                                                                      this.stepTextGroup.height = this._textContainer.height;
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         addr023a:
                                                                                                         this.stepTextGroup.x = this._textContainer.x;
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr024b:
                                                                                                            this.stepTextGroup.y = this._textContainer.y;
                                                                                                            if(_loc2_ || Boolean(param1))
                                                                                                            {
                                                                                                               addr0264:
                                                                                                               §§push(this.stepText);
                                                                                                               if(_loc2_ || Boolean(this))
                                                                                                               {
                                                                                                                  §§pop().text = this._textString;
                                                                                                                  if(_loc2_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     addr028c:
                                                                                                                     this.stepText.visible = true;
                                                                                                                     addr0288:
                                                                                                                     if(_loc2_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        §§goto(addr029c);
                                                                                                                     }
                                                                                                                     §§goto(addr02e1);
                                                                                                                  }
                                                                                                                  §§goto(addr02b8);
                                                                                                               }
                                                                                                               §§goto(addr028c);
                                                                                                            }
                                                                                                            §§goto(addr02a6);
                                                                                                         }
                                                                                                         §§goto(addr029c);
                                                                                                      }
                                                                                                      §§goto(addr024b);
                                                                                                   }
                                                                                                   §§goto(addr02a6);
                                                                                                }
                                                                                                §§goto(addr02b8);
                                                                                             }
                                                                                             §§goto(addr029c);
                                                                                          }
                                                                                          §§goto(addr0288);
                                                                                       }
                                                                                       addr029c:
                                                                                       this._textContainer = null;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr02a6:
                                                                                          this._titleContainer = null;
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             addr02b8:
                                                                                             this._textSet = true;
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr02d1:
                                                                                                this.stepImage.visible = true;
                                                                                                addr02c2:
                                                                                                if(_loc2_ || _loc3_)
                                                                                                {
                                                                                                   addr02e1:
                                                                                                   this.content.visible = true;
                                                                                                   if(_loc2_ || _loc3_)
                                                                                                   {
                                                                                                      addr02f5:
                                                                                                      invalidateProperties();
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr02fa);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr02f5);
                                                                                       }
                                                                                       addr02fa:
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr02b8);
                                                                                 }
                                                                                 §§goto(addr023a);
                                                                              }
                                                                              §§goto(addr02b8);
                                                                           }
                                                                           §§goto(addr01f0);
                                                                        }
                                                                        §§goto(addr01fa);
                                                                     }
                                                                     §§goto(addr0264);
                                                                  }
                                                                  §§goto(addr0204);
                                                               }
                                                               §§goto(addr0147);
                                                            }
                                                            §§goto(addr01fb);
                                                         }
                                                         §§goto(addr01fa);
                                                      }
                                                      §§goto(addr01f4);
                                                   }
                                                   §§goto(addr01dc);
                                                }
                                                §§goto(addr02d1);
                                             }
                                             §§goto(addr02f5);
                                          }
                                          §§goto(addr0101);
                                       }
                                       §§goto(addr02a6);
                                    }
                                    §§goto(addr00e7);
                                 }
                                 §§goto(addr02e1);
                              }
                              §§goto(addr0229);
                           }
                           §§goto(addr02c2);
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr02c2);
                  }
                  §§goto(addr02b8);
               }
               §§goto(addr008e);
            }
            §§goto(addr02d1);
         }
         §§goto(addr01af);
      }
      
      private function _FeatureScreenItemRenderer_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.visible = false;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._FeatureScreenItemRenderer_BriskMCDynaLib1_i(),this._FeatureScreenItemRenderer_Group2_i(),this._FeatureScreenItemRenderer_Group3_i()];
               if(_loc3_)
               {
                  _loc1_.id = "content";
                  if(!_loc2_)
                  {
                     addr0064:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr008e);
                           }
                        }
                        §§goto(addr0098);
                     }
                  }
                  addr008e:
                  this.content = _loc1_;
                  if(_loc3_)
                  {
                     addr0098:
                     BindingManager.executeBindings(this,"content",this.content);
                  }
                  §§goto(addr00a5);
               }
               addr00a5:
               return _loc1_;
            }
            §§goto(addr0064);
         }
         §§goto(addr008e);
      }
      
      private function _FeatureScreenItemRenderer_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.width = 230;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0039);
            }
            §§goto(addr0058);
         }
         addr0039:
         _loc1_.height = 294;
         if(_loc2_ || Boolean(this))
         {
            addr0058:
            _loc1_.id = "stepImage";
            if(!(_loc3_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr0094);
                     }
                  }
                  §§goto(addr00a6);
               }
            }
         }
         addr0094:
         this.stepImage = _loc1_;
         if(!(_loc3_ && _loc3_))
         {
            addr00a6:
            BindingManager.executeBindings(this,"stepImage",this.stepImage);
         }
         return _loc1_;
      }
      
      private function _FeatureScreenItemRenderer_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.mxmlContent = [this._FeatureScreenItemRenderer_LocaLabel1_i()];
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "stepHeaderGroup";
               if(_loc2_)
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0074:
                           this.stepHeaderGroup = _loc1_;
                           if(!_loc3_)
                           {
                              BindingManager.executeBindings(this,"stepHeaderGroup",this.stepHeaderGroup);
                           }
                        }
                        §§goto(addr008b);
                     }
                  }
                  §§goto(addr0074);
               }
               addr008b:
               return _loc1_;
            }
            §§goto(addr005f);
         }
         §§goto(addr0074);
      }
      
      private function _FeatureScreenItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.visible = false;
            if(!_loc3_)
            {
               _loc1_.styleName = "featureBubbleHead";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        addr005c:
                        _loc1_.setStyle("verticalAlign","middle");
                        if(!_loc3_)
                        {
                           addr006b:
                           _loc1_.id = "stepHeader";
                           if(_loc2_)
                           {
                              addr0085:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       §§goto(addr009a);
                                    }
                                    §§goto(addr00a4);
                                 }
                              }
                           }
                           addr009a:
                           this.stepHeader = _loc1_;
                           if(_loc2_)
                           {
                              addr00a4:
                              BindingManager.executeBindings(this,"stepHeader",this.stepHeader);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr006b);
               }
               §§goto(addr005c);
            }
            addr00b1:
            return _loc1_;
         }
         §§goto(addr0085);
      }
      
      private function _FeatureScreenItemRenderer_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._FeatureScreenItemRenderer_LocaLabel2_i()];
            if(_loc3_ || _loc3_)
            {
               _loc1_.id = "stepTextGroup";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           addr008b:
                           this.stepTextGroup = _loc1_;
                           if(!_loc2_)
                           {
                              addr0095:
                              BindingManager.executeBindings(this,"stepTextGroup",this.stepTextGroup);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0095);
            }
         }
         §§goto(addr008b);
      }
      
      private function _FeatureScreenItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.visible = false;
            if(_loc3_ || _loc3_)
            {
               _loc1_.styleName = "featureBubbleText";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     addr004e:
                     if(!_loc2_)
                     {
                        _loc1_.setStyle("verticalAlign","middle");
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.id = "stepText";
                           if(_loc3_ || _loc3_)
                           {
                              addr008c:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00a4:
                                    _loc1_.document = this;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00b5:
                                       this.stepText = _loc1_;
                                       if(!_loc2_)
                                       {
                                          addr00bf:
                                          BindingManager.executeBindings(this,"stepText",this.stepText);
                                       }
                                    }
                                    §§goto(addr00cc);
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr008c);
                  }
                  addr00cc:
                  return _loc1_;
               }
               §§goto(addr008c);
            }
            §§goto(addr00a4);
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : Group
      {
         return this._951530617content;
      }
      
      public function set content(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._951530617content;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._951530617content = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get stepHeader() : LocaLabel
      {
         return this._1926591367stepHeader;
      }
      
      public function set stepHeader(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1926591367stepHeader;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1926591367stepHeader = param1;
                  if(!_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get stepHeaderGroup() : Group
      {
         return this._702194298stepHeaderGroup;
      }
      
      public function set stepHeaderGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._702194298stepHeaderGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._702194298stepHeaderGroup = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepHeaderGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
         }
         addr0080:
      }
      
      [Bindable(event="propertyChange")]
      public function get stepImage() : BriskMCDynaLib
      {
         return this._1324487151stepImage;
      }
      
      public function set stepImage(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1324487151stepImage;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1324487151stepImage = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr0064);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0064:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepImage",_loc2_,param1));
                  }
               }
               §§goto(addr0073);
            }
            addr0073:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get stepText() : LocaLabel
      {
         return this._1428519449stepText;
      }
      
      public function set stepText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1428519449stepText;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1428519449stepText = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get stepTextGroup() : Group
      {
         return this._2013131750stepTextGroup;
      }
      
      public function set stepTextGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2013131750stepTextGroup;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2013131750stepTextGroup = param1;
                  if(!_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepTextGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0056);
            }
         }
         addr0075:
      }
   }
}

