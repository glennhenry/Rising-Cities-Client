package net.bigpoint.cityrama.view.featureScreens.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.featureScreens.vo.BigFeatureScreenVO;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class BigFeatureScreenPopup extends PaperPopupWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "tabBar":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      private var _951530617content:Group;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1006495386imageContainer:BriskMCDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean;
      
      private var _featureData:BigFeatureScreenVO;
      
      private var _textSet:Boolean;
      
      private var _titles:Vector.<String>;
      
      private var _texts:Vector.<String>;
      
      public function BigFeatureScreenPopup()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  addr004a:
                  this.showBackButton = false;
                  if(_loc2_ || _loc2_)
                  {
                     this.width = 785;
                     if(_loc2_ || _loc1_)
                     {
                        addr0079:
                        this.height = 430;
                        if(_loc2_)
                        {
                           §§goto(addr0084);
                        }
                        §§goto(addr008f);
                     }
                     addr0084:
                     this.styleName = "featureScreen";
                     if(!_loc1_)
                     {
                        addr008f:
                        this.mxmlContentFactory = new DeferredInstanceFromFunction(this._BigFeatureScreenPopup_Array1_c);
                     }
                     return;
                  }
               }
               §§goto(addr0079);
            }
            §§goto(addr004a);
         }
         §§goto(addr0079);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:BigFeatureScreenVO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._featureData))
            {
               if(!_loc3_)
               {
                  addr003a:
                  this._isDirty = true;
                  if(!(_loc3_ && _loc3_))
                  {
                     this._featureData = param1;
                     if(!_loc3_)
                     {
                        addr0056:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr005b);
               }
               §§goto(addr0056);
            }
            addr005b:
            return;
         }
         §§goto(addr003a);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.commitProperties();
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(this._featureData);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop());
                  if(!_loc1_)
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           §§pop();
                           if(_loc2_ || _loc1_)
                           {
                              §§push(this._isDirty);
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§goto(addr007e);
                                 }
                              }
                              §§goto(addr0185);
                           }
                           §§goto(addr00b7);
                        }
                     }
                  }
                  addr007e:
                  if(§§pop())
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        this.content.visible = false;
                        if(!_loc1_)
                        {
                           this._isDirty = false;
                           if(!_loc1_)
                           {
                              §§push(this._featureData);
                              if(_loc2_)
                              {
                                 addr00ae:
                                 if(§§pop())
                                 {
                                    if(!_loc1_)
                                    {
                                       addr00b7:
                                       this.title = this._featureData.popuptitle;
                                       if(!_loc1_)
                                       {
                                          this.flavorText.text = this._featureData.popupflavour;
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             addr00e1:
                                             §§push(this.imageContainer);
                                             if(_loc2_ || _loc1_)
                                             {
                                                §§push(this._featureData);
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §§push(§§pop().dynaLibName);
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      §§pop().dynaLibName = §§pop();
                                                      if(_loc2_)
                                                      {
                                                         addr0123:
                                                         §§push(this.imageContainer);
                                                         if(!(_loc1_ && Boolean(this)))
                                                         {
                                                            §§goto(addr0138);
                                                         }
                                                         §§goto(addr0216);
                                                      }
                                                      §§goto(addr0170);
                                                   }
                                                   §§goto(addr0148);
                                                }
                                                addr0138:
                                                §§push(this._featureData.dynaMCName);
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   addr0148:
                                                   §§pop().dynaMCSourceName = §§pop();
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr0158:
                                                      this._titles = this._featureData.titles;
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         addr0170:
                                                         this._texts = this._featureData.texts;
                                                         if(!_loc1_)
                                                         {
                                                            addr0180:
                                                            addr0185:
                                                            if(!this._textSet)
                                                            {
                                                               if(!(_loc1_ && _loc2_))
                                                               {
                                                                  addr0196:
                                                                  §§push(this.imageContainer);
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     §§goto(addr01ad);
                                                                  }
                                                                  §§goto(addr0216);
                                                               }
                                                               §§goto(addr0212);
                                                            }
                                                            §§goto(addr01c2);
                                                         }
                                                         §§goto(addr0212);
                                                      }
                                                      §§goto(addr0180);
                                                   }
                                                   §§goto(addr0196);
                                                }
                                                addr01ad:
                                                §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.setTextPosition);
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   addr01c2:
                                                   addr01c6:
                                                   if(this._featureData.layerStyleName != "")
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         this.setStyle("styleName",this._featureData.layerStyleName);
                                                         if(_loc1_)
                                                         {
                                                            addr0227:
                                                            this.visible = false;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0217:
                                                         this.imageContainer.dynaMCSourceName = null;
                                                         addr0216:
                                                         addr0212:
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            §§goto(addr0227);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr022b);
                                             }
                                             else
                                             {
                                                addr01f3:
                                                §§push(null);
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   §§pop().dynaLibName = §§pop();
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr0212);
                                                   }
                                                   §§goto(addr022b);
                                                }
                                             }
                                             §§goto(addr0217);
                                          }
                                          §§goto(addr0158);
                                       }
                                       §§goto(addr022b);
                                    }
                                    §§goto(addr0123);
                                 }
                                 else
                                 {
                                    §§push(this.imageContainer);
                                    if(_loc2_)
                                    {
                                       §§goto(addr01f3);
                                    }
                                 }
                                 §§goto(addr0216);
                              }
                              §§goto(addr01c6);
                           }
                           §§goto(addr0158);
                        }
                        §§goto(addr0170);
                     }
                  }
                  addr022b:
                  return;
               }
               §§goto(addr00ae);
            }
            §§goto(addr00e1);
         }
         §§goto(addr0196);
      }
      
      private function setTextPosition(param1:Event) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:* = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObject = null;
         var _loc6_:Group = null;
         var _loc7_:LocaLabel = null;
         if(!(_loc9_ && Boolean(this)))
         {
            this.imageContainer.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.setTextPosition);
         }
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc9_ && Boolean(_loc3_)))
            {
               §§push(!§§pop());
            }
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc8_ || Boolean(param1))
                  {
                     break;
                  }
                  §§goto(addr03b4);
               }
               §§push(true);
               if(!(_loc8_ || _loc2_))
               {
                  continue;
               }
               _loc2_ = §§pop();
               if(_loc9_)
               {
                  break;
               }
               _loc4_ = null;
               _loc5_ = null;
               if(!(_loc9_ && _loc2_))
               {
                  if(this._texts.length > _loc3_)
                  {
                     if(_loc8_ || Boolean(param1))
                     {
                        §§push(this.imageContainer);
                        if(_loc8_)
                        {
                           _loc4_ = §§pop().movieClip.getChildByName("textbox" + (_loc3_ + 1).toString());
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              _loc2_ = false;
                           }
                           addr00cb:
                           if(this._titles.length > _loc3_)
                           {
                              if(_loc9_)
                              {
                                 continue loop0;
                              }
                              §§push(this.imageContainer);
                              if(_loc8_)
                              {
                                 _loc5_ = §§pop().movieClip.getChildByName("titlebox" + (_loc3_ + 1).toString());
                                 if(_loc8_)
                                 {
                                    _loc2_ = false;
                                 }
                                 addr0106:
                                 if(_loc5_)
                                 {
                                    if(_loc8_ || Boolean(param1))
                                    {
                                       _loc5_.visible = false;
                                       if(_loc8_ || _loc2_)
                                       {
                                          addr012d:
                                          _loc5_.alpha = 0;
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             addr0142:
                                             if(_loc4_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   _loc4_.visible = false;
                                                   if(_loc8_)
                                                   {
                                                      _loc4_.alpha = 0;
                                                      if(_loc8_ || Boolean(_loc3_))
                                                      {
                                                         addr0172:
                                                         this.imageContainer.invalidateDisplayList();
                                                         addr016e:
                                                         if(!_loc9_)
                                                         {
                                                            addr017c:
                                                            if(_loc5_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  addr0188:
                                                                  _loc6_ = new Group();
                                                                  _loc7_ = new LocaLabel();
                                                                  if(_loc8_)
                                                                  {
                                                                     this.content.addElement(_loc6_);
                                                                     if(_loc8_)
                                                                     {
                                                                        _loc7_.styleName = "featureBubbleHead";
                                                                        if(_loc8_)
                                                                        {
                                                                           _loc7_.setStyle("verticalAlign","middle");
                                                                           addr01bd:
                                                                           if(!_loc9_)
                                                                           {
                                                                              _loc7_.width = _loc5_.width;
                                                                              if(_loc8_ || Boolean(param1))
                                                                              {
                                                                                 _loc7_.height = _loc5_.height;
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    addr01ff:
                                                                                    _loc6_.addElement(_loc7_);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       _loc6_.width = _loc5_.width;
                                                                                       if(_loc8_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr0223:
                                                                                          _loc6_.height = _loc5_.height;
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr0231:
                                                                                             _loc6_.x = _loc5_.x;
                                                                                             if(_loc8_ || Boolean(_loc3_))
                                                                                             {
                                                                                                _loc6_.y = _loc5_.y + 28;
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr0258:
                                                                                                   _loc7_.text = this._titles[_loc3_];
                                                                                                   if(!(_loc9_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr0273:
                                                                                                      _loc7_.visible = true;
                                                                                                   }
                                                                                                }
                                                                                                addr0278:
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr0284:
                                                                                                   _loc6_ = new Group();
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      this.content.addElementAt(_loc6_,this.content.numElements);
                                                                                                   }
                                                                                                   _loc7_ = new LocaLabel();
                                                                                                   _loc7_.styleName = "featureBubbleText";
                                                                                                   if(_loc8_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      _loc7_.setStyle("verticalAlign","middle");
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         _loc7_.width = _loc4_.width;
                                                                                                         if(_loc8_ || _loc2_)
                                                                                                         {
                                                                                                            _loc7_.height = _loc4_.height;
                                                                                                            if(_loc8_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               _loc6_.addElement(_loc7_);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  _loc6_.width = _loc4_.width;
                                                                                                                  if(_loc8_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     addr0323:
                                                                                                                     _loc6_.height = _loc4_.height;
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        _loc6_.x = _loc4_.x;
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           addr033f:
                                                                                                                           _loc6_.y = _loc4_.y + 28;
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              _loc7_.text = this._texts[_loc3_];
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 addr0363:
                                                                                                                                 _loc7_.visible = true;
                                                                                                                              }
                                                                                                                              addr0368:
                                                                                                                              _loc3_++;
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           §§goto(addr0363);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0368);
                                                                                                                  }
                                                                                                                  §§goto(addr0363);
                                                                                                               }
                                                                                                               §§goto(addr0323);
                                                                                                            }
                                                                                                            §§goto(addr033f);
                                                                                                         }
                                                                                                         §§goto(addr0368);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr033f);
                                                                                                }
                                                                                                §§goto(addr0368);
                                                                                             }
                                                                                             §§goto(addr0258);
                                                                                          }
                                                                                          §§goto(addr0273);
                                                                                       }
                                                                                       §§goto(addr0258);
                                                                                    }
                                                                                    §§goto(addr0223);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0231);
                                                                           }
                                                                           §§goto(addr0223);
                                                                        }
                                                                        §§goto(addr01ff);
                                                                     }
                                                                     §§goto(addr0258);
                                                                  }
                                                                  §§goto(addr01bd);
                                                               }
                                                               §§goto(addr0284);
                                                            }
                                                            §§goto(addr0278);
                                                         }
                                                         §§goto(addr0284);
                                                      }
                                                      §§goto(addr017c);
                                                   }
                                                   §§goto(addr016e);
                                                }
                                                §§goto(addr0284);
                                             }
                                             §§goto(addr016e);
                                          }
                                       }
                                       §§goto(addr0188);
                                    }
                                    §§goto(addr0284);
                                 }
                                 §§goto(addr0142);
                              }
                              §§goto(addr0172);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr0172);
                     }
                     §§goto(addr0284);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr012d);
            }
            break;
         }
         this.content.visible = true;
         if(_loc8_ || _loc2_)
         {
            this._textSet = true;
         }
         addr03b4:
      }
      
      private function _BigFeatureScreenPopup_Array1_c() : Array
      {
         return [this._BigFeatureScreenPopup_Group1_i()];
      }
      
      private function _BigFeatureScreenPopup_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr0032:
               _loc1_.height = 380;
               if(!_loc2_)
               {
                  _loc1_.top = 30;
                  if(!_loc2_)
                  {
                     §§goto(addr0047);
                  }
                  §§goto(addr008e);
               }
               addr0047:
               _loc1_.left = -15;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._BigFeatureScreenPopup_Group2_c(),this._BigFeatureScreenPopup_HGroup1_c(),this._BigFeatureScreenPopup_BriskMCDynaLib1_i()];
                  if(!_loc2_)
                  {
                     _loc1_.id = "content";
                     if(!_loc2_)
                     {
                        addr008e:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr00ae);
                           }
                        }
                     }
                     §§goto(addr00bf);
                  }
               }
               §§goto(addr00ae);
            }
            addr00ae:
            _loc1_.document = this;
            if(!(_loc2_ && _loc3_))
            {
               addr00bf:
               this.content = _loc1_;
               if(_loc3_)
               {
                  BindingManager.executeBindings(this,"content",this.content);
               }
            }
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _BigFeatureScreenPopup_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 30;
               §§goto(addr0034);
            }
            §§goto(addr0067);
         }
         addr0034:
         if(!(_loc3_ && Boolean(this)))
         {
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr0067:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _BigFeatureScreenPopup_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 95;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.height = 32;
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0043);
               }
               §§goto(addr00bd);
            }
            §§goto(addr0084);
         }
         addr0043:
         _loc1_.horizontalCenter = 0;
         if(_loc2_ || _loc3_)
         {
            _loc1_.top = -4;
            if(_loc2_ || _loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc2_))
               {
                  addr0084:
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || _loc2_)
                  {
                     addr00a1:
                     _loc1_.mxmlContent = [this._BigFeatureScreenPopup_LocaLabel1_i()];
                     if(!_loc3_)
                     {
                        addr00b1:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr00bd:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr00c1);
               }
               §§goto(addr00b1);
            }
            §§goto(addr00a1);
         }
         addr00c1:
         return _loc1_;
      }
      
      private function _BigFeatureScreenPopup_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0033:
               _loc1_.maxDisplayedLines = 2;
               if(!_loc3_)
               {
                  _loc1_.styleName = "flavorText";
                  §§goto(addr003e);
               }
               §§goto(addr009c);
            }
            addr003e:
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "flavorText";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr008a:
                           this.flavorText = _loc1_;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr009c:
                              BindingManager.executeBindings(this,"flavorText",this.flavorText);
                           }
                        }
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr009c);
            }
            addr00a9:
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _BigFeatureScreenPopup_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc2_)
         {
            _loc1_.top = 28;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.id = "imageContainer";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0051:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0073);
                        }
                     }
                     §§goto(addr0085);
                  }
                  addr0073:
                  this.imageContainer = _loc1_;
                  if(_loc3_ || _loc2_)
                  {
                     addr0085:
                     BindingManager.executeBindings(this,"imageContainer",this.imageContainer);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr0085);
            }
            addr0092:
            return _loc1_;
         }
         §§goto(addr0051);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._951530617content = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr0046:
                  this._1684755691flavorText = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0065);
            }
            addr008b:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get imageContainer() : BriskMCDynaLib
      {
         return this._1006495386imageContainer;
      }
      
      public function set imageContainer(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1006495386imageContainer;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0049:
                  this._1006495386imageContainer = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imageContainer",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0049);
      }
   }
}

