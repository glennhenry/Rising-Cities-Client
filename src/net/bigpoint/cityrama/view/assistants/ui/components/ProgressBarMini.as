package net.bigpoint.cityrama.view.assistants.ui.components
{
   import com.greensock.TweenMax;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.ProgressBarMiniVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class ProgressBarMini extends Group
   {
      
      private var _97299bar:HGroup;
      
      private var _334036562barTint:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var revertProgress:Boolean;
      
      private var _data:ProgressBarMiniVo;
      
      private var _progress:Number;
      
      private var _intervalID:uint;
      
      private var _isDirty:Boolean;
      
      public function ProgressBarMini()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc2_)
               {
                  this.percentWidth = 100;
                  if(_loc2_ || _loc2_)
                  {
                     this.height = 10;
                     if(_loc2_)
                     {
                        addr0078:
                        this.mxmlContent = [this._ProgressBarMini_HGroup1_c(),this._ProgressBarMini_HGroup2_i(),this._ProgressBarMini_HGroup3_i()];
                        if(!_loc1_)
                        {
                           addr0094:
                           this.addEventListener("creationComplete",this.___ProgressBarMini_Group1_creationComplete);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr0094);
                  }
                  addr00a0:
                  return;
               }
               §§goto(addr0094);
            }
         }
         §§goto(addr0078);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0042);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr004d);
            }
            addr0042:
            return;
         }
         addr004d:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = 0;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(getStyle("tint") == null)
            {
               if(!_loc4_)
               {
                  §§goto(addr0043);
               }
               §§goto(addr0088);
            }
            else
            {
               §§push(getStyle("tint") as uint);
            }
            §§goto(addr007a);
         }
         addr0043:
         §§push(53236);
         if(_loc3_ || Boolean(this))
         {
            _loc2_ = §§pop();
            if(!_loc4_)
            {
               addr0088:
               TweenMax.to(this.barTint,0,{"tint":_loc2_});
            }
         }
         else
         {
            addr007a:
            _loc2_ = §§pop();
            if(_loc3_ || Boolean(param1))
            {
               §§goto(addr0088);
            }
         }
      }
      
      public function set data(param1:ProgressBarMiniVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc3_)
               {
                  this._isDirty = true;
                  if(_loc2_ || Boolean(this))
                  {
                     addr005c:
                     this._data = param1;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr006e:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr005c);
            }
            addr0073:
            return;
         }
         §§goto(addr006e);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.commitProperties();
            if(!_loc1_)
            {
               if(this._isDirty)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     this._isDirty = false;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0059:
                        clearInterval(this._intervalID);
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr007b);
                        }
                        §§goto(addr009b);
                     }
                  }
                  addr007b:
                  this._intervalID = setInterval(this.handleInterval,1000);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr009b:
                     this.handleInterval();
                  }
                  §§goto(addr00a1);
               }
               addr00a1:
               return;
            }
            §§goto(addr0059);
         }
         §§goto(addr007b);
      }
      
      private function handleInterval() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._data);
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(§§pop().endTime);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(0);
                  if(_loc2_ || Boolean(this))
                  {
                     if(§§pop() != §§pop())
                     {
                        if(_loc2_)
                        {
                           addr0053:
                           §§push(this._data);
                           §§push(this._data.currentTime);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop() + 1000);
                           }
                           §§pop().currentTime = §§pop();
                           if(_loc2_)
                           {
                              addr0073:
                              §§push(this);
                              §§push(this._data.currentTime);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(this._data);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop().startTime);
                                    if(!_loc1_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          addr00ab:
                                          addr00a7:
                                          §§push(this._data.endTime);
                                          if(!_loc1_)
                                          {
                                             addr00b3:
                                             §§push(§§pop() - this._data.startTime);
                                          }
                                          §§push(§§pop() / §§pop());
                                       }
                                       §§pop()._progress = §§pop();
                                       if(_loc2_)
                                       {
                                          §§push(this._progress);
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             addr00d5:
                                             §§push(0);
                                             if(!_loc1_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   §§push(!§§pop());
                                                   if(!_loc1_)
                                                   {
                                                      var _temp_10:* = §§pop();
                                                      §§push(_temp_10);
                                                      if(_temp_10)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            addr0104:
                                                            §§pop();
                                                            if(!_loc1_)
                                                            {
                                                               §§goto(addr0114);
                                                            }
                                                            §§goto(addr01e1);
                                                         }
                                                      }
                                                      addr0114:
                                                      §§push(this.revertProgress);
                                                      if(_loc2_)
                                                      {
                                                         addr0113:
                                                         §§push(§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            this._progress = 1 - this._progress;
                                                            if(!_loc1_)
                                                            {
                                                               §§goto(addr0135);
                                                            }
                                                            §§goto(addr0198);
                                                         }
                                                         else
                                                         {
                                                            addr0180:
                                                            clearInterval(this._intervalID);
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               §§goto(addr0198);
                                                            }
                                                         }
                                                         §§goto(addr01c5);
                                                      }
                                                      addr0135:
                                                      this.bar.percentWidth = 100 * this._progress;
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         this.barTint.percentWidth = 100 * this._progress;
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            addr0198:
                                                            addr019e:
                                                            addr019c:
                                                            if(this._progress == 0)
                                                            {
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  this.bar.visible = false;
                                                                  if(!_loc1_)
                                                                  {
                                                                     addr01c5:
                                                                     this.barTint.visible = false;
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr01e1:
                                                                        this.barTint.visible = true;
                                                                     }
                                                                  }
                                                                  §§goto(addr01e8);
                                                               }
                                                               §§goto(addr01c5);
                                                            }
                                                            else
                                                            {
                                                               this.bar.visible = true;
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr01e1);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr01e8:
                                                      return;
                                                   }
                                                   §§goto(addr0113);
                                                }
                                                §§goto(addr0104);
                                             }
                                             §§goto(addr019e);
                                          }
                                          §§goto(addr019c);
                                       }
                                       §§goto(addr0198);
                                    }
                                    §§goto(addr00b3);
                                 }
                                 §§goto(addr00ab);
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr0180);
                        }
                        §§goto(addr0073);
                     }
                     else
                     {
                        this._progress = 0;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0180);
                        }
                     }
                     §§goto(addr01e1);
                  }
                  §§goto(addr019e);
               }
               §§goto(addr00d5);
            }
            §§goto(addr0053);
         }
         §§goto(addr0180);
      }
      
      private function _ProgressBarMini_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  addr004d:
                  _loc1_.mxmlContent = [this._ProgressBarMini_BriskImageDynaLib1_c(),this._ProgressBarMini_BriskImageDynaLib2_c(),this._ProgressBarMini_BriskImageDynaLib3_c()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr004d);
      }
      
      private function _ProgressBarMini_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_buffs_buffAssets";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_barbase_left";
               if(_loc2_)
               {
                  _loc1_.width = 5;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.height = 10;
                     if(!_loc3_)
                     {
                        addr0075:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0081:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0081);
            }
            addr0085:
            return _loc1_;
         }
         §§goto(addr0081);
      }
      
      private function _ProgressBarMini_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_buffs_buffAssets";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_barbase_middle";
               if(_loc2_)
               {
                  addr0040:
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.height = 10;
                     §§goto(addr0052);
                  }
               }
               §§goto(addr0071);
            }
            §§goto(addr0040);
         }
         addr0052:
         if(_loc2_ || _loc3_)
         {
            addr0071:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_buffs_buffAssets";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_barbase_right";
               if(!_loc2_)
               {
                  _loc1_.width = 5;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr007c);
               }
            }
            addr005e:
            _loc1_.height = 10;
            if(_loc3_)
            {
               addr0068:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr007c:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0068);
      }
      
      private function _ProgressBarMini_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.paddingLeft = 2;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.paddingRight = 2;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._ProgressBarMini_BriskImageDynaLib4_c(),this._ProgressBarMini_BriskImageDynaLib5_c(),this._ProgressBarMini_BriskImageDynaLib6_c()];
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0098:
                           _loc1_.id = "bar";
                           if(_loc2_)
                           {
                              addr00ae:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00c3);
                                    }
                                 }
                                 §§goto(addr00cd);
                              }
                              addr00c3:
                              this.bar = _loc1_;
                              if(_loc2_)
                              {
                                 addr00cd:
                                 BindingManager.executeBindings(this,"bar",this.bar);
                              }
                           }
                           §§goto(addr00da);
                        }
                        §§goto(addr00cd);
                     }
                     addr00da:
                     return _loc1_;
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr0098);
            }
         }
         §§goto(addr00ae);
      }
      
      private function _ProgressBarMini_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_buffs_buffAssets";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_left";
               if(_loc3_)
               {
                  _loc1_.height = 4;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr007b);
            }
            §§goto(addr0063);
         }
         addr007b:
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_buffs_buffAssets";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_middle";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0062:
                     _loc1_.height = 4;
                     if(_loc3_)
                     {
                        §§goto(addr006c);
                     }
                  }
               }
               §§goto(addr0078);
            }
            addr006c:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0078:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0062);
      }
      
      private function _ProgressBarMini_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_buffs_buffAssets";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_right";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.height = 4;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0089);
            }
            addr0075:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0089:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0089);
      }
      
      private function _ProgressBarMini_HGroup3_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.paddingLeft = 2;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.paddingRight = 2;
                     if(_loc3_)
                     {
                        _loc1_.blendMode = "overlay";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr007a:
                           _loc1_.mxmlContent = [this._ProgressBarMini_BriskImageDynaLib7_c(),this._ProgressBarMini_BriskImageDynaLib8_c(),this._ProgressBarMini_BriskImageDynaLib9_c()];
                           if(!(_loc2_ && _loc3_))
                           {
                              addr009e:
                              _loc1_.id = "barTint";
                              if(!_loc2_)
                              {
                                 addr00a9:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       _loc1_.document = this;
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00d1:
                                          this.barTint = _loc1_;
                                          if(_loc3_)
                                          {
                                             addr00db:
                                             BindingManager.executeBindings(this,"barTint",this.barTint);
                                          }
                                       }
                                    }
                                    §§goto(addr00e8);
                                 }
                              }
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr00d1);
               }
               addr00e8:
               return _loc1_;
            }
            §§goto(addr007a);
         }
         §§goto(addr009e);
      }
      
      private function _ProgressBarMini_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_buffs_buffAssets";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_left";
               if(_loc2_)
               {
                  _loc1_.height = 4;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0073:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0073);
            }
            addr0077:
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _ProgressBarMini_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_buffs_buffAssets";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_middle";
               §§goto(addr0032);
            }
            §§goto(addr008c);
         }
         addr0032:
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.height = 4;
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr008c:
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ProgressBarMini_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_buffs_buffAssets";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_right";
               if(_loc3_)
               {
                  addr005c:
                  _loc1_.height = 4;
                  if(!_loc2_)
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr007a);
               }
            }
            addr0066:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc3_)
               {
                  addr007a:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      public function ___ProgressBarMini_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bar() : HGroup
      {
         return this._97299bar;
      }
      
      public function set bar(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._97299bar;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._97299bar = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get barTint() : HGroup
      {
         return this._334036562barTint;
      }
      
      public function set barTint(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._334036562barTint;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._334036562barTint = param1;
                  if(!_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barTint",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0057);
      }
   }
}

