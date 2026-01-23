package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintImageValueVO;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ArchitectImageValueItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _2008488570ImageContainer:HGroup;
      
      private var _1055687225textLabel:LocaLabel;
      
      private var _816216256visual:BriskImageDynaLib;
      
      private var _1595195676visualOK:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ArchitectImageValueItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_ || _loc1_)
            {
               addr002e:
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  this.autoDrawBackground = false;
                  if(!(_loc1_ && _loc1_))
                  {
                     addr0064:
                     this.percentWidth = 100;
                     if(_loc2_ || _loc1_)
                     {
                        addr0076:
                        this.mxmlContent = [this._ArchitectImageValueItemRenderer_HGroup1_i()];
                        if(!_loc1_)
                        {
                           §§goto(addr0086);
                        }
                        §§goto(addr0092);
                     }
                  }
                  addr0086:
                  this.currentState = "normal";
                  if(_loc2_)
                  {
                     states = [new State({
                        "name":"normal",
                        "overrides":[]
                     }),new State({
                        "name":"hovered",
                        "overrides":[]
                     }),new State({
                        "name":"selected",
                        "overrides":[]
                     })];
                     addr0092:
                  }
                  return;
               }
               §§goto(addr0076);
            }
            §§goto(addr0064);
         }
         §§goto(addr002e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               addr004c:
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr004c);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:BlueprintImageValueVO = null;
         if(!(_loc5_ && Boolean(param1)))
         {
            super.data = param1;
            if(_loc4_ || _loc3_)
            {
               §§goto(addr003b);
            }
            §§goto(addr0040);
         }
         addr003b:
         if(param1)
         {
            addr0040:
            _loc2_ = param1 as BlueprintImageValueVO;
            if(_loc4_ || Boolean(this))
            {
               §§push(_loc2_.visualName);
               if(_loc4_)
               {
                  §§push("");
                  if(!_loc5_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(this.visual);
                           if(!(_loc5_ && Boolean(this)))
                           {
                              §§push(this.visual);
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 §§push(false);
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    var _temp_7:* = §§pop();
                                    §§push(_temp_7);
                                    §§push(_temp_7);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       var _loc3_:* = §§pop();
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          §§pop().includeInLayout = §§pop();
                                          if(!(_loc5_ && Boolean(param1)))
                                          {
                                             §§push(_loc3_);
                                             if(!_loc5_)
                                             {
                                                if(_loc4_ || Boolean(param1))
                                                {
                                                   §§pop().visible = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      addr0151:
                                                      §§push(_loc2_.textLabel);
                                                      if(!_loc5_)
                                                      {
                                                         §§push("");
                                                         if(_loc4_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!(_loc5_ && Boolean(this)))
                                                               {
                                                                  §§push(this.textLabel);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(false);
                                                                     if(!(_loc5_ && Boolean(param1)))
                                                                     {
                                                                        §§pop().visible = §§pop();
                                                                        if(_loc4_ || Boolean(_loc2_))
                                                                        {
                                                                           addr0267:
                                                                           §§push(_loc2_.visualOKName);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr0273:
                                                                              if(§§pop() != "")
                                                                              {
                                                                                 if(_loc4_ || Boolean(param1))
                                                                                 {
                                                                                    §§push(this.visualOK);
                                                                                    if(_loc4_ || Boolean(this))
                                                                                    {
                                                                                       §§push(_loc2_.visualOKLibName);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§pop().dynaLibName = §§pop();
                                                                                          if(_loc4_ || Boolean(param1))
                                                                                          {
                                                                                             addr02b1:
                                                                                             §§push(this.visualOK);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§goto(addr02bf);
                                                                                             }
                                                                                             §§goto(addr0379);
                                                                                          }
                                                                                          §§goto(addr038d);
                                                                                       }
                                                                                       addr02bf:
                                                                                       §§pop().dynaBmpSourceName = _loc2_.visualOKName;
                                                                                       §§goto(addr02bb);
                                                                                    }
                                                                                    addr02bb:
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr02c7:
                                                                                       §§push(this.visualOK);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(true);
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             §§pop().visible = §§pop();
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr02e8:
                                                                                                §§push(this.visualOK);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr02f2:
                                                                                                   §§push(this.visualOK);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         var _temp_19:* = §§pop();
                                                                                                         §§push(_temp_19);
                                                                                                         §§push(_temp_19);
                                                                                                         if(_loc4_ || Boolean(this))
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§pop().includeInLayout = §§pop();
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(_loc4_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     if(_loc4_ || Boolean(_loc2_))
                                                                                                                     {
                                                                                                                        §§pop().visible = §§pop();
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           addr038d:
                                                                                                                           §§push(_loc2_.effectType);
                                                                                                                           if(_loc4_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr039f:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    addr03a9:
                                                                                                                                    §§push(_loc2_.effectType);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(MainLayerProxy.MOOD);
                                                                                                                                       if(_loc4_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                this.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.mood");
                                                                                                                                                addr03d1:
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr0412:
                                                                                                                                                this.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.energy");
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0400:
                                                                                                                                             addr03fa:
                                                                                                                                             if(_loc2_.effectType == MainLayerProxy.ENERGY)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && Boolean(param1)))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0412);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr0420);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0400);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03fa);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr0420);
                                                                                                                           }
                                                                                                                           §§goto(addr03fa);
                                                                                                                        }
                                                                                                                        §§goto(addr0412);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0385:
                                                                                                                        §§pop().visible = §§pop();
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§goto(addr038d);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0420);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0383:
                                                                                                                  }
                                                                                                                  §§goto(addr0385);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0382:
                                                                                                                  §§push(_loc3_);
                                                                                                               }
                                                                                                               §§goto(addr0383);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0380:
                                                                                                               §§pop().includeInLayout = §§pop();
                                                                                                            }
                                                                                                            §§goto(addr0382);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr037f:
                                                                                                            _loc3_ = §§pop();
                                                                                                         }
                                                                                                         §§goto(addr0380);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr037e:
                                                                                                         var _temp_26:* = §§pop();
                                                                                                         §§push(_temp_26);
                                                                                                         §§push(_temp_26);
                                                                                                      }
                                                                                                      §§goto(addr037f);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr037d:
                                                                                                      §§push(false);
                                                                                                   }
                                                                                                   §§goto(addr037e);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0379:
                                                                                                   §§push(this.visualOK);
                                                                                                }
                                                                                                §§goto(addr037d);
                                                                                             }
                                                                                             §§goto(addr03d1);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr036d:
                                                                                             §§pop().visible = §§pop();
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr0375:
                                                                                                §§goto(addr0379);
                                                                                                §§push(this.visualOK);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr038d);
                                                                                       }
                                                                                       §§goto(addr02f2);
                                                                                    }
                                                                                    §§goto(addr0420);
                                                                                 }
                                                                                 §§goto(addr0375);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.visualOK);
                                                                                 if(!(_loc5_ && Boolean(this)))
                                                                                 {
                                                                                    §§push(false);
                                                                                    if(_loc4_ || Boolean(this))
                                                                                    {
                                                                                       §§goto(addr036d);
                                                                                    }
                                                                                    §§goto(addr0385);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0379);
                                                                           }
                                                                           §§goto(addr03fa);
                                                                        }
                                                                        §§goto(addr02c7);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01ad:
                                                                        §§pop().visible = §§pop();
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(this.textLabel);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              addr01c7:
                                                                              §§pop().text = _loc2_.textLabel;
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr01d3:
                                                                                 §§push(_loc2_.valueFontSize);
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop() != §§pop())
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr020c:
                                                                                             §§push(this.textLabel);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr0216:
                                                                                                §§push("fontsize");
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(_loc2_.valueFontSize);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§pop().setStyle(§§pop(),§§pop());
                                                                                                      if(_loc4_ || Boolean(param1))
                                                                                                      {
                                                                                                         addr023b:
                                                                                                         addr0241:
                                                                                                         addr023f:
                                                                                                         if(_loc2_.valueColor != 0)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr0256:
                                                                                                               this.textLabel.setStyle("color",_loc2_.valueColor);
                                                                                                               addr0252:
                                                                                                               addr024f:
                                                                                                               addr024b:
                                                                                                               if(!(_loc5_ && Boolean(this)))
                                                                                                               {
                                                                                                                  §§goto(addr0267);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr02c7);
                                                                                                         }
                                                                                                         §§goto(addr0267);
                                                                                                      }
                                                                                                      §§goto(addr0375);
                                                                                                   }
                                                                                                   §§goto(addr0256);
                                                                                                }
                                                                                                §§goto(addr0252);
                                                                                             }
                                                                                             §§goto(addr024f);
                                                                                          }
                                                                                          §§goto(addr02b1);
                                                                                       }
                                                                                       §§goto(addr023b);
                                                                                    }
                                                                                    §§goto(addr0241);
                                                                                 }
                                                                                 §§goto(addr023f);
                                                                              }
                                                                              §§goto(addr02e8);
                                                                           }
                                                                           §§goto(addr0216);
                                                                        }
                                                                        §§goto(addr01d3);
                                                                     }
                                                                  }
                                                                  §§goto(addr01c7);
                                                               }
                                                               §§goto(addr038d);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.textLabel);
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr01ad);
                                                                  §§push(true);
                                                               }
                                                            }
                                                            §§goto(addr0216);
                                                         }
                                                         §§goto(addr0273);
                                                      }
                                                      §§goto(addr039f);
                                                   }
                                                   §§goto(addr023b);
                                                }
                                                else
                                                {
                                                   addr0149:
                                                   §§pop().visible = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr0151);
                                                   }
                                                }
                                                §§goto(addr020c);
                                             }
                                             else
                                             {
                                                addr0147:
                                             }
                                             §§goto(addr0149);
                                          }
                                          else
                                          {
                                             addr0146:
                                             §§push(_loc3_);
                                          }
                                          §§goto(addr0147);
                                       }
                                       else
                                       {
                                          addr0144:
                                          §§pop().includeInLayout = §§pop();
                                       }
                                       §§goto(addr0146);
                                    }
                                    else
                                    {
                                       addr0143:
                                       _loc3_ = §§pop();
                                    }
                                    §§goto(addr0144);
                                 }
                                 else
                                 {
                                    addr0142:
                                    var _temp_34:* = §§pop();
                                    §§push(_temp_34);
                                    §§push(_temp_34);
                                 }
                                 §§goto(addr0143);
                              }
                              else
                              {
                                 addr0141:
                                 §§push(true);
                              }
                              §§goto(addr0142);
                           }
                           else
                           {
                              addr013d:
                              §§push(this.visual);
                           }
                           §§goto(addr0141);
                        }
                        §§goto(addr03a9);
                     }
                     else
                     {
                        §§push(this.visual);
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           §§push(_loc2_.visualLibName);
                           if(_loc4_)
                           {
                              §§pop().dynaLibName = §§pop();
                              if(_loc4_)
                              {
                                 §§push(this.visual);
                                 if(_loc4_)
                                 {
                                    addr0129:
                                    §§pop().dynaBmpSourceName = _loc2_.visualName;
                                    if(!(_loc5_ && Boolean(_loc2_)))
                                    {
                                       §§goto(addr013d);
                                       §§push(this.visual);
                                    }
                                    §§goto(addr02e8);
                                 }
                                 §§goto(addr013d);
                              }
                              §§goto(addr02b1);
                           }
                           §§goto(addr0129);
                        }
                     }
                     §§goto(addr013d);
                  }
                  §§goto(addr0273);
               }
               §§goto(addr03fa);
            }
            §§goto(addr024b);
         }
         addr0420:
      }
      
      private function _ArchitectImageValueItemRenderer_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.paddingBottom = 4;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr005c:
                     _loc1_.width = 220;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectImageValueItemRenderer_LocaLabel1_i(),this._ArchitectImageValueItemRenderer_BriskImageDynaLib1_i(),this._ArchitectImageValueItemRenderer_BriskImageDynaLib2_i()];
                        if(!_loc2_)
                        {
                           _loc1_.id = "ImageContainer";
                           if(_loc3_)
                           {
                              addr008e:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00af:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00b8:
                                       this.ImageContainer = _loc1_;
                                       if(!_loc2_)
                                       {
                                          BindingManager.executeBindings(this,"ImageContainer",this.ImageContainer);
                                       }
                                    }
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr00b8);
            }
            §§goto(addr005c);
         }
         addr00cf:
         return _loc1_;
      }
      
      private function _ArchitectImageValueItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.maxWidth = 200;
            if(_loc3_)
            {
               _loc1_.styleName = "fontABlack";
               if(_loc3_)
               {
                  _loc1_.setStyle("color",5726299);
                  if(_loc3_)
                  {
                     _loc1_.setStyle("textAlign","left");
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.setStyle("fontSize",15);
                        if(!_loc2_)
                        {
                           _loc1_.id = "textLabel";
                           if(_loc3_ || _loc2_)
                           {
                              addr0092:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr009e);
                                 }
                                 §§goto(addr00ce);
                              }
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr0092);
            }
            §§goto(addr00bc);
         }
         addr009e:
         _loc1_.document = this;
         if(_loc3_ || Boolean(_loc1_))
         {
            addr00bc:
            this.textLabel = _loc1_;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr00ce:
               BindingManager.executeBindings(this,"textLabel",this.textLabel);
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectImageValueItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.visible = false;
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_paperPopup";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.includeInLayout = false;
                  if(!_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "cc_icon_medium";
                     if(_loc3_)
                     {
                        §§goto(addr0065);
                     }
                  }
                  §§goto(addr0084);
               }
               addr0065:
               _loc1_.id = "visual";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0084:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr0099);
                        }
                        §§goto(addr00a3);
                     }
                  }
               }
               addr0099:
               this.visual = _loc1_;
               if(_loc3_)
               {
                  addr00a3:
                  BindingManager.executeBindings(this,"visual",this.visual);
               }
               return _loc1_;
            }
            §§goto(addr0084);
         }
         §§goto(addr00a3);
      }
      
      private function _ArchitectImageValueItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.visible = false;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.includeInLayout = false;
               if(_loc2_)
               {
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "checkmark_green";
                     if(!_loc3_)
                     {
                        _loc1_.id = "visualOK";
                        if(!_loc3_)
                        {
                           addr0066:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr008f:
                                    this.visualOK = _loc1_;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00a1:
                                       BindingManager.executeBindings(this,"visualOK",this.visualOK);
                                    }
                                 }
                              }
                              §§goto(addr00ae);
                           }
                           §§goto(addr008f);
                        }
                        §§goto(addr00a1);
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0066);
            }
            addr00ae:
            return _loc1_;
         }
         §§goto(addr008f);
      }
      
      [Bindable(event="propertyChange")]
      public function get ImageContainer() : HGroup
      {
         return this._2008488570ImageContainer;
      }
      
      public function set ImageContainer(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2008488570ImageContainer;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr0043:
                  this._2008488570ImageContainer = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ImageContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get textLabel() : LocaLabel
      {
         return this._1055687225textLabel;
      }
      
      public function set textLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1055687225textLabel;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1055687225textLabel = param1;
                  addr0049:
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get visual() : BriskImageDynaLib
      {
         return this._816216256visual;
      }
      
      public function set visual(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._816216256visual;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr004b:
                  this._816216256visual = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visual",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0055);
            }
            addr0073:
            return;
         }
         §§goto(addr004b);
      }
      
      [Bindable(event="propertyChange")]
      public function get visualOK() : BriskImageDynaLib
      {
         return this._1595195676visualOK;
      }
      
      public function set visualOK(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1595195676visualOK;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004e:
                  this._1595195676visualOK = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visualOK",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr004e);
      }
   }
}

