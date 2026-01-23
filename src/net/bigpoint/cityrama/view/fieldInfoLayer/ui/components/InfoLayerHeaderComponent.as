package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerHeaderVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class InfoLayerHeaderComponent extends Group implements IStateClient2
   {
      
      private var _15876775blueBar:BlueBarComponent;
      
      private var _1161933810headerGroup:Group;
      
      private var _1664780950layerIcon:BriskImageDynaLib;
      
      private var _58259577layerTitle:LocaLabel;
      
      private var _909318622statusLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FieldInfoLayerHeaderVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _titleLengthSet:Boolean;
      
      private var _iconSizeSet:Boolean;
      
      public function InfoLayerHeaderComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               addr0025:
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  §§goto(addr0037);
               }
               §§goto(addr004b);
            }
            addr0037:
            this.percentWidth = 100;
            if(_loc1_)
            {
               addr004b:
               this.mxmlContent = [this._InfoLayerHeaderComponent_VGroup1_c(),this._InfoLayerHeaderComponent_BriskImageDynaLib1_i()];
               if(_loc1_)
               {
                  §§goto(addr0061);
               }
               §§goto(addr0090);
            }
            addr0061:
            this.currentState = "normal";
            if(!_loc2_)
            {
               this.addEventListener("removedFromStage",this.___InfoLayerHeaderComponent_Group1_removedFromStage);
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0090:
                  states = [new State({
                     "name":"normal",
                     "overrides":[]
                  }),new State({
                     "name":"disabled",
                     "overrides":[]
                  })];
               }
            }
            return;
         }
         §§goto(addr0025);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               §§goto(addr0020);
            }
            §§goto(addr0034);
         }
         addr0020:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_)
            {
               return;
            }
         }
         else
         {
            addr0034:
            this.__moduleFactoryInitialized = true;
         }
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
      
      public function set data(param1:FieldInfoLayerHeaderVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc2_ && _loc3_))
               {
                  this._data = param1;
                  if(_loc3_)
                  {
                     addr004d:
                     this._dataIsDirty = true;
                  }
               }
            }
            return;
         }
         §§goto(addr004d);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(!(_loc1_ && _loc2_))
            {
               if(this._dataIsDirty)
               {
                  if(!_loc1_)
                  {
                     this._dataIsDirty = false;
                     if(!_loc1_)
                     {
                        this._titleLengthSet = false;
                        if(!(_loc1_ && Boolean(this)))
                        {
                           this._iconSizeSet = false;
                           if(!(_loc1_ && Boolean(this)))
                           {
                              if(this._data.preHeaderText)
                              {
                                 if(!_loc1_)
                                 {
                                    §§push(this.statusLabel);
                                    if(_loc2_)
                                    {
                                       §§pop().text = this._data.preHeaderText;
                                       if(_loc2_)
                                       {
                                          addr008a:
                                          §§push(this.statusLabel);
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(true);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§pop().includeInLayout = §§pop();
                                                if(!_loc1_)
                                                {
                                                   §§push(this.statusLabel);
                                                   if(!(_loc1_ && Boolean(this)))
                                                   {
                                                      addr00c1:
                                                      §§push(true);
                                                      if(!_loc1_)
                                                      {
                                                         §§pop().visible = §§pop();
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            addr0116:
                                                            §§push(this.layerTitle);
                                                            if(_loc2_)
                                                            {
                                                               §§push(this._data.headerText);
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §§pop().text = §§pop();
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     addr014b:
                                                                     this.layerTitle.addEventListener(FlexEvent.UPDATE_COMPLETE,this.layerTitleLengthSet);
                                                                     addr0146:
                                                                     if(_loc2_)
                                                                     {
                                                                        addr0157:
                                                                        §§push(this.layerIcon);
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           §§pop().left = -5;
                                                                           if(!_loc1_)
                                                                           {
                                                                              addr0171:
                                                                              §§push(this.layerIcon);
                                                                              if(!(_loc1_ && _loc2_))
                                                                              {
                                                                                 §§pop().visible = false;
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    §§push(this.layerIcon);
                                                                                    if(!(_loc1_ && Boolean(this)))
                                                                                    {
                                                                                       addr019b:
                                                                                       §§push(this._data);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(§§pop().icon_dynaBmpSourceName);
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             §§pop().dynaBmpSourceName = §§pop();
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                addr01c5:
                                                                                                §§push(this.layerIcon);
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   addr01d2:
                                                                                                   §§push(this._data.icon_dynaLibName);
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      §§goto(addr01da);
                                                                                                   }
                                                                                                   §§goto(addr01eb);
                                                                                                }
                                                                                                §§goto(addr01e5);
                                                                                             }
                                                                                             §§goto(addr01e1);
                                                                                          }
                                                                                          addr01da:
                                                                                          §§pop().dynaLibName = §§pop();
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             addr01eb:
                                                                                             this.layerIcon.addEventListener(BriskImageDynaLibEvent.SIZE_CHANGED,this.layerIconSizeSet);
                                                                                             addr01e5:
                                                                                             addr01e1:
                                                                                          }
                                                                                          §§goto(addr01f2);
                                                                                       }
                                                                                       §§goto(addr01d2);
                                                                                    }
                                                                                    §§goto(addr01e5);
                                                                                 }
                                                                                 §§goto(addr01f2);
                                                                              }
                                                                              §§goto(addr01e5);
                                                                           }
                                                                           §§goto(addr01f2);
                                                                        }
                                                                        §§goto(addr019b);
                                                                     }
                                                                     §§goto(addr01c5);
                                                                  }
                                                                  §§goto(addr0171);
                                                               }
                                                               §§goto(addr014b);
                                                            }
                                                            §§goto(addr0146);
                                                         }
                                                         §§goto(addr01f2);
                                                      }
                                                      else
                                                      {
                                                         addr010f:
                                                         §§pop().visible = §§pop();
                                                         if(!_loc1_)
                                                         {
                                                            §§goto(addr0116);
                                                         }
                                                      }
                                                      §§goto(addr0157);
                                                   }
                                                   else
                                                   {
                                                      addr010e:
                                                      §§push(false);
                                                   }
                                                   §§goto(addr010f);
                                                }
                                                §§goto(addr0116);
                                             }
                                             else
                                             {
                                                addr00fb:
                                                §§pop().includeInLayout = §§pop();
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   §§goto(addr010e);
                                                   §§push(this.statusLabel);
                                                }
                                             }
                                             §§goto(addr01e1);
                                          }
                                          §§goto(addr00c1);
                                       }
                                       §§goto(addr01c5);
                                    }
                                    else
                                    {
                                       addr00ed:
                                       §§push(false);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§goto(addr00fb);
                                       }
                                    }
                                    §§goto(addr010f);
                                 }
                                 §§goto(addr0171);
                              }
                              else
                              {
                                 §§push(this.statusLabel);
                                 if(_loc2_)
                                 {
                                    §§goto(addr00ed);
                                 }
                              }
                              §§goto(addr010e);
                           }
                           §§goto(addr01f2);
                        }
                        §§goto(addr008a);
                     }
                  }
                  §§goto(addr0157);
               }
               addr01f2:
               return;
            }
            §§goto(addr0157);
         }
         §§goto(addr0116);
      }
      
      private function layerTitleLengthSet(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.layerTitle);
            if(_loc2_ || _loc2_)
            {
               if(§§pop().width > 0)
               {
                  if(!_loc3_)
                  {
                     this.layerTitle.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.layerTitleLengthSet);
                     addr003b:
                     if(_loc2_)
                     {
                        §§goto(addr0059);
                     }
                     §§goto(addr00b4);
                  }
                  addr0059:
                  this._titleLengthSet = true;
                  if(_loc2_)
                  {
                     addr0063:
                     §§push(this._titleLengthSet);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           var _temp_2:* = §§pop();
                           §§push(_temp_2);
                           if(_temp_2)
                           {
                              if(!_loc3_)
                              {
                                 §§pop();
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr00a3);
                                 }
                                 §§goto(addr00b4);
                              }
                           }
                        }
                        addr00a3:
                        §§goto(addr0099);
                     }
                     §§goto(addr00a2);
                  }
                  addr0099:
                  §§push(this._iconSizeSet);
                  if(!_loc3_)
                  {
                     addr00a2:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00b4:
                        this.checkForIconReposition();
                     }
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr0063);
            }
            §§goto(addr003b);
         }
         addr00ba:
      }
      
      private function layerIconSizeSet(param1:BriskImageDynaLibEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            §§push(this.layerIcon);
            if(_loc2_)
            {
               if(§§pop().width > 0)
               {
                  if(_loc2_)
                  {
                     addr0039:
                     this.layerIcon.removeEventListener(BriskImageDynaLibEvent.SIZE_CHANGED,this.layerIconSizeSet);
                     addr0035:
                     if(!(_loc3_ && _loc2_))
                     {
                        this._iconSizeSet = true;
                        if(_loc2_)
                        {
                           addr0068:
                           §§push(this._titleLengthSet);
                           if(!_loc3_)
                           {
                              §§push(§§pop());
                              if(!(_loc3_ && _loc2_))
                              {
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 if(_temp_4)
                                 {
                                    if(_loc2_ || Boolean(param1))
                                    {
                                       §§pop();
                                       if(_loc2_)
                                       {
                                          §§goto(addr00b5);
                                       }
                                       §§goto(addr00c6);
                                    }
                                    §§goto(addr00b4);
                                 }
                                 §§goto(addr00b5);
                              }
                              §§goto(addr00b4);
                           }
                           addr00b5:
                           §§push(this._iconSizeSet);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr00b4:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr00c6:
                                 this.checkForIconReposition();
                              }
                           }
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00c6);
                  }
                  addr00cc:
                  return;
               }
               §§goto(addr0068);
            }
            §§goto(addr0039);
         }
         §§goto(addr0035);
      }
      
      private function checkForIconReposition() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = NaN;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.layerTitle);
            if(_loc2_)
            {
               if(§§pop().x <= this.layerIcon.x + this.layerIcon.width)
               {
                  if(!_loc3_)
                  {
                     §§push(this.layerIcon);
                     if(_loc2_ || Boolean(this))
                     {
                        §§pop().addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleIconRepositioned);
                        if(_loc2_ || _loc3_)
                        {
                           addr007c:
                           addr0078:
                           §§push(this.layerTitle.x - Math.round(this.layerIcon.width >> 1));
                           if(_loc2_)
                           {
                              §§push(§§pop() - 10);
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                              }
                           }
                           _loc1_ = §§pop();
                           if(!_loc3_)
                           {
                              addr00a2:
                              §§push(this.layerIcon);
                              if(_loc2_)
                              {
                                 §§pop().left = Math.min(this.layerIcon.left + _loc1_,this.layerIcon.x);
                                 if(_loc3_ && Boolean(this))
                                 {
                                 }
                              }
                              else
                              {
                                 addr00e4:
                                 §§pop().visible = true;
                              }
                           }
                           §§goto(addr00e7);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr00e4);
                  }
                  addr00e7:
                  return;
               }
               §§push(this.layerIcon);
               §§goto(addr00e4);
            }
            §§goto(addr007c);
         }
         §§goto(addr0078);
      }
      
      private function handleIconRepositioned(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.layerIcon);
            if(!_loc3_)
            {
               §§pop().removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleIconRepositioned);
               if(_loc2_ || Boolean(param1))
               {
                  addr0053:
                  this.layerIcon.visible = true;
                  addr004f:
               }
               return;
            }
            §§goto(addr0053);
         }
         §§goto(addr004f);
      }
      
      private function handleRemoved() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this.layerIcon);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.layerIcon);
                     if(_loc2_)
                     {
                        §§push(BriskImageDynaLibEvent.SIZE_CHANGED);
                        if(_loc2_ || _loc1_)
                        {
                           §§pop().removeEventListener(§§pop(),this.layerIconSizeSet);
                           if(!_loc1_)
                           {
                              this.layerIcon.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleIconRepositioned);
                              addr0073:
                              addr006e:
                              addr006a:
                              if(_loc2_ || _loc2_)
                              {
                                 addr0091:
                                 §§push(this.layerTitle);
                                 if(_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          addr00a7:
                                          this.layerTitle.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.layerTitleLengthSet);
                                          addr00a3:
                                       }
                                    }
                                    §§goto(addr00b3);
                                 }
                                 §§goto(addr00a7);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr0073);
                     }
                     §§goto(addr006e);
                  }
                  addr00b3:
                  return;
               }
               §§goto(addr0091);
            }
            §§goto(addr006e);
         }
         §§goto(addr006a);
      }
      
      override public function get measuredHeight() : Number
      {
         return this.headerGroup.measuredHeight;
      }
      
      override public function get measuredWidth() : Number
      {
         return this.headerGroup.measuredWidth;
      }
      
      private function _InfoLayerHeaderComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.width = 227;
            if(_loc2_)
            {
               _loc1_.verticalAlign = "top";
               if(_loc2_ || Boolean(this))
               {
                  addr0048:
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     _loc1_.gap = 3;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._InfoLayerHeaderComponent_Group2_i()];
                        addr005c:
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0094:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr0094);
                     }
                     addr0098:
                     return _loc1_;
                  }
                  §§goto(addr0094);
               }
               §§goto(addr005c);
            }
         }
         §§goto(addr0048);
      }
      
      private function _InfoLayerHeaderComponent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._InfoLayerHeaderComponent_VGroup2_c()];
               if(!_loc2_)
               {
                  _loc1_.id = "headerGroup";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0090:
                              this.headerGroup = _loc1_;
                              if(!_loc2_)
                              {
                                 addr009a:
                                 BindingManager.executeBindings(this,"headerGroup",this.headerGroup);
                              }
                           }
                           §§goto(addr00a7);
                        }
                     }
                     §§goto(addr0090);
                  }
                  addr00a7:
                  return _loc1_;
               }
               §§goto(addr009a);
            }
         }
         §§goto(addr0090);
      }
      
      private function _InfoLayerHeaderComponent_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.left = 10;
               if(_loc2_)
               {
                  addr003a:
                  _loc1_.right = 10;
                  if(!_loc3_)
                  {
                     addr004e:
                     _loc1_.bottom = 0;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.horizontalAlign = "center";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.mxmlContent = [this._InfoLayerHeaderComponent_LocaLabel1_i(),this._InfoLayerHeaderComponent_Group3_c()];
                           if(_loc2_)
                           {
                              addr0097:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00ab:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr00ab);
                        }
                        addr00af:
                        return _loc1_;
                     }
                  }
                  §§goto(addr0097);
               }
               §§goto(addr004e);
            }
            §§goto(addr00ab);
         }
         §§goto(addr003a);
      }
      
      private function _InfoLayerHeaderComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.maxWidth = 180;
            if(_loc3_ || _loc2_)
            {
               _loc1_.styleName = "infoLayerStatus";
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0059);
               }
               §§goto(addr00b1);
            }
            §§goto(addr009f);
         }
         addr0059:
         _loc1_.maxDisplayedLines = 2;
         if(_loc3_)
         {
            _loc1_.id = "statusLabel";
            if(_loc3_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr009f:
                        this.statusLabel = _loc1_;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00b1:
                           BindingManager.executeBindings(this,"statusLabel",this.statusLabel);
                        }
                     }
                  }
                  §§goto(addr00be);
               }
               §§goto(addr009f);
            }
         }
         addr00be:
         return _loc1_;
      }
      
      private function _InfoLayerHeaderComponent_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._InfoLayerHeaderComponent_BlueBarComponent1_i(),this._InfoLayerHeaderComponent_VGroup3_c()];
               if(_loc2_ || _loc2_)
               {
                  addr0064:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0064);
      }
      
      private function _InfoLayerHeaderComponent_BlueBarComponent1_i() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.top = 0;
                  if(_loc2_)
                  {
                     _loc1_.left = 0;
                     if(_loc2_)
                     {
                        _loc1_.right = 0;
                        if(_loc2_)
                        {
                           addr0060:
                           _loc1_.bottom = 0;
                           if(_loc2_)
                           {
                              addr006b:
                              _loc1_.id = "blueBar";
                              if(!_loc3_)
                              {
                                 addr0076:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr0095:
                                       _loc1_.document = this;
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr00a6:
                                          this.blueBar = _loc1_;
                                          if(!_loc3_)
                                          {
                                             addr00b0:
                                             BindingManager.executeBindings(this,"blueBar",this.blueBar);
                                          }
                                       }
                                       §§goto(addr00bd);
                                    }
                                    §§goto(addr00b0);
                                 }
                                 §§goto(addr00a6);
                              }
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr0095);
                     }
                     addr00bd:
                     return _loc1_;
                  }
               }
               §§goto(addr0060);
            }
            §§goto(addr0076);
         }
         §§goto(addr006b);
      }
      
      private function _InfoLayerHeaderComponent_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.minHeight = 25;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0056:
                     _loc1_.top = 5;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.left = 5;
                        if(!_loc2_)
                        {
                           _loc1_.right = 5;
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.bottom = 5;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00a4:
                                 _loc1_.horizontalAlign = "center";
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00ae);
                                 }
                                 §§goto(addr00de);
                              }
                              §§goto(addr00b9);
                           }
                           addr00ae:
                           _loc1_.verticalAlign = "middle";
                           if(!_loc2_)
                           {
                              _loc1_.mxmlContent = [this._InfoLayerHeaderComponent_LocaLabel2_i()];
                              addr00b9:
                              if(_loc3_ || _loc3_)
                              {
                                 addr00de:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00f2:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00f6);
                              }
                              §§goto(addr00f2);
                           }
                           addr00f6:
                           return _loc1_;
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr00de);
                  }
                  §§goto(addr00f2);
               }
               §§goto(addr0056);
            }
         }
         §§goto(addr00a4);
      }
      
      private function _InfoLayerHeaderComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.maxDisplayedLines = 2;
            if(_loc2_)
            {
               _loc1_.maxWidth = 150;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.styleName = "infoLayerTitle";
                  if(_loc2_)
                  {
                     addr005d:
                     _loc1_.id = "layerTitle";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr0091);
                              }
                              §§goto(addr00a3);
                           }
                        }
                     }
                     addr0091:
                     this.layerTitle = _loc1_;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr00a3:
                        BindingManager.executeBindings(this,"layerTitle",this.layerTitle);
                     }
                     §§goto(addr00b0);
                  }
                  addr00b0:
                  return _loc1_;
               }
               §§goto(addr0070);
            }
            §§goto(addr005d);
         }
         §§goto(addr0070);
      }
      
      private function _InfoLayerHeaderComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.left = -5;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.bottom = -5;
               if(!_loc3_)
               {
                  _loc1_.id = "layerIcon";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr007e);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr008f);
            }
            §§goto(addr005e);
         }
         addr007e:
         _loc1_.document = this;
         if(!(_loc3_ && _loc3_))
         {
            addr008f:
            this.layerIcon = _loc1_;
            if(!_loc3_)
            {
               addr0099:
               BindingManager.executeBindings(this,"layerIcon",this.layerIcon);
            }
         }
         return _loc1_;
      }
      
      public function ___InfoLayerHeaderComponent_Group1_removedFromStage(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleRemoved();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blueBar() : BlueBarComponent
      {
         return this._15876775blueBar;
      }
      
      public function set blueBar(param1:BlueBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._15876775blueBar;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr003d:
                  this._15876775blueBar = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr0072);
               }
               addr005b:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blueBar",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
            addr0081:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerGroup() : Group
      {
         return this._1161933810headerGroup;
      }
      
      public function set headerGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1161933810headerGroup;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1161933810headerGroup = param1;
                  addr0047:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get layerIcon() : BriskImageDynaLib
      {
         return this._1664780950layerIcon;
      }
      
      public function set layerIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1664780950layerIcon;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1664780950layerIcon = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
         }
         addr007a:
      }
      
      [Bindable(event="propertyChange")]
      public function get layerTitle() : LocaLabel
      {
         return this._58259577layerTitle;
      }
      
      public function set layerTitle(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._58259577layerTitle;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._58259577layerTitle = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerTitle",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr007f);
            }
            addr008e:
            return;
         }
         §§goto(addr007f);
      }
      
      [Bindable(event="propertyChange")]
      public function get statusLabel() : LocaLabel
      {
         return this._909318622statusLabel;
      }
      
      public function set statusLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._909318622statusLabel;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._909318622statusLabel = param1;
                  addr0046:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0075);
               }
            }
            addr0084:
            return;
         }
         §§goto(addr0046);
      }
   }
}

