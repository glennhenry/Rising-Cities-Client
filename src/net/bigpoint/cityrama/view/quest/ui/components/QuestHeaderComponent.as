package net.bigpoint.cityrama.view.quest.ui.components
{
   import flash.geom.Point;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class QuestHeaderComponent extends Group implements IStateClient2
   {
      
      private var _1977519450headerText:LocaLabel;
      
      private var _1340618197prefixIcon:BriskImageDynaLib;
      
      private var _1783199621questIcon:BriskImageDynaLib;
      
      private var _1059785390textGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataIsDirty:Boolean = false;
      
      private var _data:QuestDetailViewVo;
      
      private const PREFIX_PRODUCTION_OFFSET:Point;
      
      private const PREFIX_SELLING_OFFSET:Point;
      
      public function QuestHeaderComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.PREFIX_PRODUCTION_OFFSET = new Point(24,-2.5);
            if(_loc2_ || _loc2_)
            {
               addr0030:
               this.PREFIX_SELLING_OFFSET = new Point(30,0);
               if(_loc2_ || _loc2_)
               {
                  super();
                  if(_loc2_ || _loc1_)
                  {
                     mx_internal::_document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        this.percentWidth = 100;
                        if(!(_loc1_ && _loc1_))
                        {
                           addr0090:
                           this.percentHeight = 100;
                           if(!_loc1_)
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00ce);
                        }
                     }
                     §§goto(addr00b0);
                  }
                  addr009a:
                  this.mxmlContent = [this._QuestHeaderComponent_BlueBarComponent1_c(),this._QuestHeaderComponent_VGroup1_c()];
                  if(!_loc1_)
                  {
                     addr00b0:
                     this.currentState = "normal";
                     if(_loc2_ || Boolean(this))
                     {
                        addr00ce:
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
               §§goto(addr0090);
            }
            §§goto(addr00ce);
         }
         §§goto(addr0030);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               addr0035:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
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
         §§goto(addr0035);
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
      
      public function set data(param1:QuestDetailViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc2_ && _loc3_))
               {
                  this._data = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0071);
               }
               addr005f:
               this._dataIsDirty = true;
               if(_loc3_ || _loc3_)
               {
                  addr0071:
                  invalidateProperties();
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr005f);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._dataIsDirty);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        this._dataIsDirty = false;
                        if(_loc1_ || _loc1_)
                        {
                           §§push(this.prefixIcon);
                           if(!_loc2_)
                           {
                              §§push(false);
                              if(_loc1_)
                              {
                                 §§pop().visible = §§pop();
                                 if(!_loc2_)
                                 {
                                    this.headerText.text = this._data.questHeader;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr0073:
                                       §§push(this.questIcon);
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§push("quest");
                                          if(_loc1_ || Boolean(this))
                                          {
                                             §§push(this._data);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                §§push(§§pop().questGfxId);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() + §§pop().toString());
                                                   if(_loc1_)
                                                   {
                                                      §§pop().dynaBmpSourceName = §§pop();
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         addr00c6:
                                                         §§push(this._data);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            §§push(§§pop().targetGoodGfxId);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(0);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        var _temp_9:* = §§pop();
                                                                        §§push(_temp_9);
                                                                        §§push(_temp_9);
                                                                        if(!(_loc2_ && Boolean(this)))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr0111:
                                                                                 §§pop();
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    §§push(this._data);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(§§pop().questGfxId);
                                                                                       if(_loc1_ || Boolean(this))
                                                                                       {
                                                                                          addr0130:
                                                                                          §§push(QuestGUIProxy.GFXID_PRODUCTION_TASK);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                addr0141:
                                                                                                var _temp_12:* = §§pop();
                                                                                                addr0142:
                                                                                                §§push(_temp_12);
                                                                                                if(!_temp_12)
                                                                                                {
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      addr0153:
                                                                                                      §§pop();
                                                                                                      if(_loc1_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(this._data);
                                                                                                         if(_loc1_ || _loc1_)
                                                                                                         {
                                                                                                            addr017c:
                                                                                                            §§push(§§pop().questGfxId);
                                                                                                            if(_loc1_ || Boolean(this))
                                                                                                            {
                                                                                                               addr018c:
                                                                                                               §§push(QuestGUIProxy.GFXID_SELLING_TASK);
                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                               {
                                                                                                                  §§goto(addr01a0);
                                                                                                               }
                                                                                                               §§goto(addr0252);
                                                                                                            }
                                                                                                            §§goto(addr024c);
                                                                                                         }
                                                                                                         §§goto(addr0249);
                                                                                                      }
                                                                                                      §§goto(addr01f2);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr01a0);
                                                                                             }
                                                                                             §§goto(addr0153);
                                                                                          }
                                                                                          §§goto(addr0252);
                                                                                       }
                                                                                       §§goto(addr018c);
                                                                                    }
                                                                                    §§goto(addr0249);
                                                                                 }
                                                                                 §§goto(addr01f2);
                                                                              }
                                                                           }
                                                                           addr01a0:
                                                                           §§goto(addr019f);
                                                                        }
                                                                        §§goto(addr0142);
                                                                     }
                                                                  }
                                                                  §§goto(addr0111);
                                                               }
                                                               addr019f:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr01a9:
                                                                     §§push(this.prefixIcon);
                                                                     if(!(_loc2_ && Boolean(this)))
                                                                     {
                                                                        addr01bb:
                                                                        §§pop().visible = true;
                                                                        addr01ba:
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           addr01ca:
                                                                           §§push(this.questIcon);
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              §§push("gui_popups_smallGoodIcons");
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§pop().dynaLibName = §§pop();
                                                                                 if(_loc1_ || _loc2_)
                                                                                 {
                                                                                    addr01f6:
                                                                                    addr01f2:
                                                                                    addr020e:
                                                                                    §§push(this.questIcon);
                                                                                    §§push("small_");
                                                                                    if(_loc1_ || Boolean(this))
                                                                                    {
                                                                                       addr0206:
                                                                                       addr020d:
                                                                                       addr020a:
                                                                                       §§push(§§pop() + this._data.targetGoodGfxId);
                                                                                    }
                                                                                    §§pop().dynaBmpSourceName = §§pop();
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr0215:
                                                                                       §§push(this.prefixIcon);
                                                                                       if(_loc1_ || _loc2_)
                                                                                       {
                                                                                          addr0226:
                                                                                          §§push("quest");
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(§§pop() + this._data.questGfxId);
                                                                                          }
                                                                                          §§pop().dynaBmpSourceName = §§pop();
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             addr0245:
                                                                                             addr0252:
                                                                                             addr024c:
                                                                                             addr0249:
                                                                                             if(this._data.questGfxId == QuestGUIProxy.GFXID_PRODUCTION_TASK)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   addr025b:
                                                                                                   §§push(this.prefixIcon);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(this.questIcon);
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         §§pop().left = §§pop().left + this.PREFIX_PRODUCTION_OFFSET.x;
                                                                                                         if(_loc1_ || _loc2_)
                                                                                                         {
                                                                                                            addr0285:
                                                                                                            §§push(this.prefixIcon);
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               addr028e:
                                                                                                               §§push(this.questIcon);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  addr0297:
                                                                                                                  §§pop().top = §§pop().top + this.PREFIX_PRODUCTION_OFFSET.y;
                                                                                                                  if(_loc2_ && _loc1_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr02d7:
                                                                                                                  §§pop().left = §§pop().left + this.PREFIX_SELLING_OFFSET.x;
                                                                                                                  if(!(_loc2_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr02f7:
                                                                                                                     this.prefixIcon.top = this.questIcon.top + this.PREFIX_SELLING_OFFSET.y;
                                                                                                                     addr02f3:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0302);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr02c4:
                                                                                                               §§push(this.questIcon);
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  §§goto(addr02d7);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr02f7);
                                                                                                         }
                                                                                                         §§goto(addr0302);
                                                                                                      }
                                                                                                      §§goto(addr0297);
                                                                                                   }
                                                                                                   §§goto(addr02c4);
                                                                                                }
                                                                                                §§goto(addr0302);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.prefixIcon);
                                                                                                if(_loc1_ || Boolean(this))
                                                                                                {
                                                                                                   §§goto(addr02c4);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr02f3);
                                                                                          }
                                                                                          §§goto(addr0302);
                                                                                       }
                                                                                       §§goto(addr028e);
                                                                                    }
                                                                                    §§goto(addr0245);
                                                                                 }
                                                                                 §§goto(addr025b);
                                                                              }
                                                                              §§goto(addr0206);
                                                                           }
                                                                           §§goto(addr01f6);
                                                                        }
                                                                        §§goto(addr0302);
                                                                     }
                                                                     §§goto(addr0226);
                                                                  }
                                                               }
                                                               §§goto(addr0302);
                                                            }
                                                            §§goto(addr0130);
                                                         }
                                                         §§goto(addr017c);
                                                      }
                                                      §§goto(addr01ca);
                                                   }
                                                   §§goto(addr020e);
                                                }
                                                §§goto(addr020d);
                                             }
                                             §§goto(addr020a);
                                          }
                                          §§goto(addr0206);
                                       }
                                       §§goto(addr01f6);
                                    }
                                    §§goto(addr0285);
                                 }
                                 §§goto(addr01f2);
                              }
                              §§goto(addr01bb);
                           }
                           §§goto(addr01ba);
                        }
                        §§goto(addr01a9);
                     }
                     §§goto(addr00c6);
                  }
                  addr0302:
                  return;
               }
               §§goto(addr0141);
            }
            §§goto(addr0073);
         }
         §§goto(addr0215);
      }
      
      private function _QuestHeaderComponent_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _QuestHeaderComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = -5;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0051:
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     addr0066:
                     _loc1_.mxmlContent = [this._QuestHeaderComponent_HGroup1_i()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr008a:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0066);
            }
            §§goto(addr0051);
         }
         §§goto(addr0066);
      }
      
      private function _QuestHeaderComponent_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0038:
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     _loc1_.gap = 0;
                     if(!_loc3_)
                     {
                        §§goto(addr0063);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr0086);
               }
               addr0063:
               _loc1_.mxmlContent = [this._QuestHeaderComponent_HGroup2_c()];
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "textGroup";
                  if(_loc2_)
                  {
                     addr0086:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr00b0:
                              this.textGroup = _loc1_;
                              if(_loc2_)
                              {
                                 addr00ba:
                                 BindingManager.executeBindings(this,"textGroup",this.textGroup);
                              }
                           }
                           §§goto(addr00c7);
                        }
                     }
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr00c7);
            }
            addr00c7:
            return _loc1_;
         }
         §§goto(addr0038);
      }
      
      private function _QuestHeaderComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._QuestHeaderComponent_Group2_c(),this._QuestHeaderComponent_LocaLabel1_i()];
                  if(_loc3_)
                  {
                     addr006a:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0076:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0076);
            }
            addr007a:
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _QuestHeaderComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._QuestHeaderComponent_BriskImageDynaLib1_i(),this._QuestHeaderComponent_BriskImageDynaLib2_i()];
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0073:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _QuestHeaderComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.left = 0;
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.dynaBmpSourceName = "quest51001";
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr0090);
               }
            }
            §§goto(addr0099);
         }
         addr005b:
         _loc1_.id = "questIcon";
         if(!(_loc2_ && _loc2_))
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0090:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     addr0099:
                     this.questIcon = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        BindingManager.executeBindings(this,"questIcon",this.questIcon);
                     }
                  }
               }
               §§goto(addr00b8);
            }
            §§goto(addr0099);
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _QuestHeaderComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.smoothing = true;
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc2_)
               {
                  _loc1_.id = "prefixIcon";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0067:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr0085);
                           }
                        }
                        §§goto(addr0097);
                     }
                     addr0085:
                     this.prefixIcon = _loc1_;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0097:
                        BindingManager.executeBindings(this,"prefixIcon",this.prefixIcon);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0067);
            }
            addr00a4:
            return _loc1_;
         }
         §§goto(addr0085);
      }
      
      private function _QuestHeaderComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.styleName = "questHeader";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.id = "headerText";
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr007c:
                           this.headerText = _loc1_;
                           if(_loc3_)
                           {
                              addr0086:
                              BindingManager.executeBindings(this,"headerText",this.headerText);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0086);
            }
            §§goto(addr007c);
         }
         §§goto(addr0086);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerText() : LocaLabel
      {
         return this._1977519450headerText;
      }
      
      public function set headerText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1977519450headerText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1977519450headerText = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerText",_loc2_,param1));
                        }
                     }
                     §§goto(addr005f);
                  }
                  §§goto(addr0050);
               }
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get prefixIcon() : BriskImageDynaLib
      {
         return this._1340618197prefixIcon;
      }
      
      public function set prefixIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1340618197prefixIcon;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1340618197prefixIcon = param1;
                  addr0041:
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr006f);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prefixIcon",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get questIcon() : BriskImageDynaLib
      {
         return this._1783199621questIcon;
      }
      
      public function set questIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1783199621questIcon;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1783199621questIcon = param1;
                  addr003d:
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get textGroup() : HGroup
      {
         return this._1059785390textGroup;
      }
      
      public function set textGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1059785390textGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1059785390textGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

