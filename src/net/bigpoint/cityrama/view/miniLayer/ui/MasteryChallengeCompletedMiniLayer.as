package net.bigpoint.cityrama.view.miniLayer.ui
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Bounce;
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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusVo;
   import net.bigpoint.cityrama.model.mastery.MasteryChallengeCompletedMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.miniLayer.components.MasteryRewardMinilayerItemRenderer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.skins.ImprovementEfficiencyListSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class MasteryChallengeCompletedMiniLayer extends MiniLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "sparkle":false,
            "closeButton":false,
            "controlBarGroup":false,
            "attentionSign":false,
            "contentGroup":false,
            "titleDisplay":false
         };
      }
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1105049158headerTextLabel:LocaLabel;
      
      private var _85291001masteryStar0:BriskImageDynaLib;
      
      private var _85291000masteryStar1:BriskImageDynaLib;
      
      private var _85290999masteryStar2:BriskImageDynaLib;
      
      private var _85290998masteryStar3:BriskImageDynaLib;
      
      private var _85290997masteryStar4:BriskImageDynaLib;
      
      private var _1690977389rewardList:List;
      
      private var _1768858175rewardTrophy:BriskImageDynaLib;
      
      private var _1804648195rewardsHeadTextLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _starIcons:Vector.<BriskImageDynaLib>;
      
      private var _data:MasteryChallengeCompletedMiniLayerVo;
      
      private var _dataDirty:Boolean;
      
      public function MasteryChallengeCompletedMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.width = 540;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0086);
               }
               addr005e:
               this.height = 313;
               if(!_loc2_)
               {
                  addr0069:
                  this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MasteryChallengeCompletedMiniLayer_Array1_c);
                  if(_loc1_ || _loc2_)
                  {
                     addr0086:
                     this.addEventListener("creationComplete",this.___MasteryChallengeCompletedMiniLayer_MiniLayerWindow1_creationComplete);
                  }
               }
               §§goto(addr0092);
            }
            §§goto(addr0069);
         }
         addr0092:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
         this.__moduleFactoryInitialized = true;
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            title = LocaUtils.getString("rcl.miniLayer.masterychallengecomplete","rcl.miniLayer.masterychallengecomplete.title.capital");
            if(_loc2_)
            {
               this.rewardsHeadTextLabel.text = LocaUtils.getString("rcl.miniLayer.masterychallengecomplete","rcl.miniLayer.masterychallengecomplete.stats.header");
               §§goto(addr0043);
            }
            §§goto(addr0068);
         }
         addr0043:
         if(_loc2_)
         {
            addr0068:
            TweenMax.to(this,0,{"glowFilter":{
               "color":14140033,
               "alpha":1,
               "blurX":32,
               "blurY":32,
               "strength":1.8
            }});
         }
      }
      
      public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._data = param1 as MasteryChallengeCompletedMiniLayerVo;
                  if(_loc2_)
                  {
                     addr0061:
                     this._dataDirty = true;
                     if(_loc2_)
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0061);
            }
         }
         addr0070:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc1_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:BriskImageDynaLib = null;
         var _loc5_:ArrayCollection = null;
         var _loc6_:MasteryBonusVo = null;
         if(!(_loc9_ && Boolean(_loc3_)))
         {
            super.commitProperties();
            if(!(_loc9_ && Boolean(_loc2_)))
            {
               §§push(this._dataDirty);
               if(_loc10_ || Boolean(_loc3_))
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && _loc1_))
                     {
                        this._dataDirty = false;
                        if(!_loc9_)
                        {
                           addr007f:
                           _loc1_ = false;
                           if(_loc10_ || _loc1_)
                           {
                              §§push(this._data.completedMasteryChallengeIndex);
                              if(_loc10_)
                              {
                                 §§push(§§pop());
                                 if(_loc10_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc10_ || Boolean(_loc2_))
                                    {
                                       this.headerTextLabel.text = LocaUtils.getString("rcl.miniLayer.masterychallengecomplete","rcl.miniLayer.masterychallengecomplete.header.capital",[_loc2_]);
                                       if(!(_loc9_ && _loc1_))
                                       {
                                          addr00d6:
                                          if(_loc2_ == 5)
                                          {
                                             if(_loc10_ || Boolean(_loc2_))
                                             {
                                                addr00ea:
                                                §§push(this.flavourLabel);
                                                if(!(_loc9_ && _loc1_))
                                                {
                                                   §§push(LocaUtils.getString("rcl.miniLayer.masterychallengecomplete","rcl.miniLayer.masterychallengecomplete.layerText.finished.flavor"));
                                                   if(!(_loc9_ && Boolean(_loc3_)))
                                                   {
                                                      §§pop().text = §§pop();
                                                      if(!(_loc9_ && Boolean(_loc2_)))
                                                      {
                                                         §§goto(addr0156);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0146:
                                                      §§pop().text = §§pop();
                                                      if(!(_loc9_ && Boolean(_loc2_)))
                                                      {
                                                         addr0156:
                                                         §§goto(addr0161);
                                                      }
                                                   }
                                                   §§goto(addr015f);
                                                }
                                                else
                                                {
                                                   addr013a:
                                                   §§push(LocaUtils.getString("rcl.miniLayer.masterychallengecomplete","rcl.miniLayer.masterychallengecomplete.layerText.normal.flavor"));
                                                }
                                                §§goto(addr0146);
                                             }
                                             §§goto(addr015f);
                                          }
                                          else
                                          {
                                             §§push(this.flavourLabel);
                                          }
                                          §§goto(addr013a);
                                       }
                                       §§goto(addr00ea);
                                    }
                                    §§goto(addr015f);
                                 }
                                 §§goto(addr00d6);
                              }
                              addr0161:
                              §§push(0);
                              if(_loc10_)
                              {
                                 _loc3_ = §§pop();
                                 addr015f:
                                 §§push(0);
                              }
                              for each(_loc4_ in this.starIcons)
                              {
                                 if(_loc10_)
                                 {
                                    if(_loc3_ < _loc2_)
                                    {
                                       if(!(_loc9_ && Boolean(_loc3_)))
                                       {
                                          TweenMax.to(_loc4_,_loc3_ + 0.3,{
                                             "autoAlpha":1,
                                             "delay":1
                                          });
                                          if(!_loc10_)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                 }
                                 _loc3_++;
                              }
                              if(!_loc9_)
                              {
                                 TweenMax.to(this.rewardTrophy,1,{
                                    "scaleX":1,
                                    "scaleY":1,
                                    "alpha":1,
                                    "ease":Bounce.easeOut,
                                    "delay":1
                                 });
                                 if(!_loc9_)
                                 {
                                    TweenMax.to(this.rewardTrophy,0,{
                                       "scaleX":5,
                                       "scaleY":5,
                                       "alpha":0
                                    });
                                 }
                              }
                              _loc5_ = new ArrayCollection();
                              if(_loc10_ || _loc1_)
                              {
                                 var _loc7_:int = 0;
                                 if(_loc10_ || Boolean(_loc3_))
                                 {
                                    for each(_loc6_ in this._data.rewards)
                                    {
                                       if(!_loc9_)
                                       {
                                          _loc5_.addItem(_loc6_);
                                       }
                                    }
                                 }
                                 if(_loc10_)
                                 {
                                    this.rewardList.dataProvider = _loc5_;
                                 }
                              }
                              §§goto(addr0289);
                           }
                        }
                        §§goto(addr015f);
                     }
                     §§goto(addr0156);
                  }
                  addr0289:
                  return;
               }
               §§goto(addr007f);
            }
            §§goto(addr015f);
         }
         §§goto(addr00ea);
      }
      
      private function get starIcons() : Vector.<BriskImageDynaLib>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            if(this._starIcons == null)
            {
               if(!_loc1_)
               {
                  §§push(this);
                  §§pop()._starIcons = new <BriskImageDynaLib>[this.masteryStar0,this.masteryStar1,this.masteryStar2,this.masteryStar3,this.masteryStar4];
               }
            }
         }
         return this._starIcons;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Array1_c() : Array
      {
         return [this._MasteryChallengeCompletedMiniLayer_VGroup1_c(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib13_i()];
      }
      
      private function _MasteryChallengeCompletedMiniLayer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_Group1_c(),this._MasteryChallengeCompletedMiniLayer_HGroup3_c(),this._MasteryChallengeCompletedMiniLayer_LocaLabel2_i(),this._MasteryChallengeCompletedMiniLayer_Group3_c()];
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0084:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0098:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0098);
            }
         }
         §§goto(addr0084);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_HGroup1_c(),this._MasteryChallengeCompletedMiniLayer_HGroup2_c()];
               if(_loc2_)
               {
                  §§goto(addr0060);
               }
               §§goto(addr006c);
            }
            addr0060:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr006c:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0070);
         }
         addr0070:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.height = 35;
               if(_loc2_ || _loc2_)
               {
                  addr0056:
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BlueBarComponent1_c()];
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr008f:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr008f);
            }
         }
         §§goto(addr0056);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.width = 430;
               if(!(_loc2_ && _loc2_))
               {
                  addr0060:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0060);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  addr003f:
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.height = 35;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.paddingTop = 2;
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_LocaLabel1_i()];
                           addr0081:
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr00a4);
                           }
                           §§goto(addr00b8);
                        }
                        addr00a4:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00b8:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0081);
            }
            §§goto(addr003f);
         }
         addr00bc:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "StatusBarStyle";
            if(_loc3_ || _loc2_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.maxWidth = 356;
                  if(_loc3_)
                  {
                     _loc1_.text = "DEV: HEADLINE";
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.id = "headerTextLabel";
                        if(_loc3_)
                        {
                           addr0091:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr009d:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00a6);
                                 }
                              }
                              §§goto(addr00b0);
                           }
                        }
                        addr00a6:
                        this.headerTextLabel = _loc1_;
                        if(!_loc2_)
                        {
                           addr00b0:
                           BindingManager.executeBindings(this,"headerTextLabel",this.headerTextLabel);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr009d);
               }
            }
            §§goto(addr0091);
         }
         addr00bd:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.height = 50;
               if(!_loc3_)
               {
                  addr0050:
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_Group2_c()];
                     if(_loc2_ || _loc2_)
                     {
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr008a:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr007e);
               }
               addr008e:
               return _loc1_;
            }
            §§goto(addr0050);
         }
         §§goto(addr008a);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group2_c() : Group
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
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_HGroup4_c(),this._MasteryChallengeCompletedMiniLayer_HGroup5_c()];
                  if(!_loc3_)
                  {
                     addr0069:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0075:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr0075);
               }
               addr0079:
               return _loc1_;
            }
            §§goto(addr0075);
         }
         §§goto(addr0069);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib1_c(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib2_c(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib3_c(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib4_c(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib5_c()];
                     addr0052:
                     if(!_loc3_)
                     {
                        §§goto(addr0086);
                     }
                     §§goto(addr0092);
                  }
                  addr0086:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0092:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0052);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mastery_star_grey";
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr005d);
               }
               §§goto(addr0071);
            }
            addr005d:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr0071:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0075);
         }
         addr0075:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mastery_star_grey";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr004b:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0057:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0057);
         }
         §§goto(addr004b);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "mastery_star_grey";
               if(_loc3_ || _loc2_)
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
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "mastery_star_grey";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr006f:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr006f);
            }
         }
         addr0073:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "mastery_star_grey";
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
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
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               §§goto(addr002a);
            }
            §§goto(addr0093);
         }
         addr002a:
         _loc1_.percentHeight = 100;
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib6_i(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib7_i(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib8_i(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib9_i(),this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib10_i()];
               §§goto(addr0049);
            }
            §§goto(addr0093);
         }
         addr0049:
         if(!(_loc2_ && _loc2_))
         {
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0093:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.alpha = 0;
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mastery_star_blue";
               if(!_loc3_)
               {
                  §§goto(addr0037);
               }
            }
            §§goto(addr0089);
         }
         addr0037:
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.id = "masteryStar0";
            if(_loc2_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0089:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr009a);
                     }
                     §§goto(addr00a4);
                  }
               }
               addr009a:
               this.masteryStar0 = _loc1_;
               if(_loc2_)
               {
                  addr00a4:
                  BindingManager.executeBindings(this,"masteryStar0",this.masteryStar0);
               }
               §§goto(addr00b1);
            }
            §§goto(addr00a4);
         }
         addr00b1:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.alpha = 0;
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "mastery_star_blue";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.dynaLibName = "gui_popups_miniLayer";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0067:
                     _loc1_.id = "masteryStar1";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr008e:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00ac:
                                 this.masteryStar1 = _loc1_;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00be:
                                    BindingManager.executeBindings(this,"masteryStar1",this.masteryStar1);
                                 }
                              }
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr0067);
            }
            §§goto(addr00be);
         }
         addr00cb:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.alpha = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr003a:
               _loc1_.dynaBmpSourceName = "mastery_star_blue";
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr004d);
               }
               §§goto(addr00c0);
            }
            addr004d:
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.id = "masteryStar2";
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr007e);
               }
               §§goto(addr00c0);
            }
            addr007e:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.document = this;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr00ae);
                  }
                  §§goto(addr00c0);
               }
            }
            addr00ae:
            this.masteryStar2 = _loc1_;
            if(_loc2_ || _loc2_)
            {
               addr00c0:
               BindingManager.executeBindings(this,"masteryStar2",this.masteryStar2);
            }
            return _loc1_;
         }
         §§goto(addr003a);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.alpha = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "mastery_star_blue";
               if(_loc2_)
               {
                  _loc1_.dynaLibName = "gui_popups_miniLayer";
                  if(_loc2_)
                  {
                     _loc1_.id = "masteryStar3";
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr006d);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr00a0);
               }
               addr006d:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr008d:
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr0096);
                     }
                  }
                  §§goto(addr00a0);
               }
               addr0096:
               this.masteryStar3 = _loc1_;
               if(_loc2_)
               {
                  addr00a0:
                  BindingManager.executeBindings(this,"masteryStar3",this.masteryStar3);
               }
               §§goto(addr00ad);
            }
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.alpha = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "mastery_star_blue";
               if(_loc2_ || _loc2_)
               {
                  addr005a:
                  _loc1_.dynaLibName = "gui_popups_miniLayer";
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.id = "masteryStar4";
                     if(_loc2_ || _loc2_)
                     {
                        addr0080:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00a9:
                                 this.masteryStar4 = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00b3:
                                    BindingManager.executeBindings(this,"masteryStar4",this.masteryStar4);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr0080);
               }
            }
            §§goto(addr00a9);
         }
         §§goto(addr005a);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.maxDisplayedLines = 2;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.maxWidth = 420;
               if(_loc2_)
               {
                  _loc1_.styleName = "infoLabel";
                  if(!_loc3_)
                  {
                     addr0060:
                     _loc1_.id = "flavourLabel";
                     if(_loc2_)
                     {
                        addr006b:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0093:
                                 this.flavourLabel = _loc1_;
                                 if(_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr0093);
                  }
               }
               §§goto(addr006b);
            }
            §§goto(addr0093);
         }
         §§goto(addr0060);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr004e:
               _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_Group4_c(),this._MasteryChallengeCompletedMiniLayer_VGroup2_c()];
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0070:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0070);
         }
         §§goto(addr004e);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib11_c()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.top = -6;
            if(!_loc3_)
            {
               addr002a:
               _loc1_.left = -3;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.dynaLibName = "gui_popups_miniLayer";
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.dynaBmpSourceName = "postit_blue_slim";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr0086:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008a);
                  }
               }
               §§goto(addr0086);
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr002a);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.top = 17;
               if(_loc3_)
               {
                  addr0054:
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_Group5_c(),this._MasteryChallengeCompletedMiniLayer_HGroup8_c()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0080:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0084);
            }
            §§goto(addr0054);
         }
         addr0084:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_HGroup6_c(),this._MasteryChallengeCompletedMiniLayer_HGroup7_c()];
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
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
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.height = 20;
               if(_loc3_)
               {
                  addr0054:
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BlueBarComponent2_c()];
                     if(_loc3_)
                     {
                        addr006e:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr006e);
            }
            §§goto(addr0054);
         }
         §§goto(addr006e);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BlueBarComponent2_c() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.width = 430;
               if(_loc2_)
               {
                  addr0041:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0051);
            }
            §§goto(addr0041);
         }
         addr0051:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup7_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 20;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_LocaLabel3_i()];
                        if(!_loc2_)
                        {
                           addr0082:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr008e:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr008e);
               }
               addr0092:
               return _loc1_;
            }
            §§goto(addr0082);
         }
         §§goto(addr008e);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.styleName = "InfoBarStyle";
               if(!(_loc3_ && _loc3_))
               {
                  addr0048:
                  _loc1_.id = "rewardsHeadTextLabel";
                  if(_loc2_)
                  {
                     addr0053:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr007e:
                              this.rewardsHeadTextLabel = _loc1_;
                              if(_loc2_)
                              {
                                 BindingManager.executeBindings(this,"rewardsHeadTextLabel",this.rewardsHeadTextLabel);
                              }
                           }
                           §§goto(addr0095);
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0053);
            }
            §§goto(addr0048);
         }
         addr0095:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_HGroup8_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_Group6_c(),this._MasteryChallengeCompletedMiniLayer_VGroup3_c(),this._MasteryChallengeCompletedMiniLayer_Group7_c()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr005d:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0061);
            }
            §§goto(addr005d);
         }
         addr0061:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_BriskImageDynaLib12_c()];
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0058:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0058);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.top = -5;
                  if(!_loc2_)
                  {
                     addr0067:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr007b:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr007b);
            }
            addr007f:
            return _loc1_;
         }
         §§goto(addr0067);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     addr0066:
                     _loc1_.mxmlContent = [this._MasteryChallengeCompletedMiniLayer_List1_i()];
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr007e);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0066);
            }
            addr007e:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr008a:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr008a);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.itemRenderer = this._MasteryChallengeCompletedMiniLayer_ClassFactory1_c();
               if(_loc2_)
               {
                  addr0048:
                  _loc1_.mouseEnabled = false;
                  if(!_loc3_)
                  {
                     _loc1_.mouseChildren = false;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.setStyle("skinClass",ImprovementEfficiencyListSkin);
                        if(_loc2_)
                        {
                           addr007f:
                           _loc1_.id = "rewardList";
                           if(!_loc3_)
                           {
                              addr008a:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00ab:
                                       this.rewardList = _loc1_;
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          addr00bd:
                                          BindingManager.executeBindings(this,"rewardList",this.rewardList);
                                       }
                                       §§goto(addr00ca);
                                    }
                                    §§goto(addr00bd);
                                 }
                                 addr00ca:
                                 return _loc1_;
                              }
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr00ab);
                  }
               }
               §§goto(addr00bd);
            }
            §§goto(addr0048);
         }
         §§goto(addr007f);
      }
      
      private function _MasteryChallengeCompletedMiniLayer_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
         {
            _loc1_.generator = MasteryRewardMinilayerItemRenderer;
         }
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_Group7_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 20;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0049:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr004d);
            }
            §§goto(addr0049);
         }
         addr004d:
         return _loc1_;
      }
      
      private function _MasteryChallengeCompletedMiniLayer_BriskImageDynaLib13_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(_loc3_)
               {
                  _loc1_.left = 9;
                  if(_loc3_ || _loc2_)
                  {
                     addr005d:
                     _loc1_.top = -66;
                     if(_loc3_)
                     {
                        addr0067:
                        _loc1_.id = "rewardTrophy";
                        if(!_loc2_)
                        {
                           addr007e:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr008a);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr0093);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr007e);
                  }
                  addr008a:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     addr0093:
                     this.rewardTrophy = _loc1_;
                     if(!_loc2_)
                     {
                        addr009d:
                        BindingManager.executeBindings(this,"rewardTrophy",this.rewardTrophy);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0067);
            }
            §§goto(addr007e);
         }
         §§goto(addr005d);
      }
      
      public function ___MasteryChallengeCompletedMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._949820541flavourLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._949820541flavourLabel = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerTextLabel() : LocaLabel
      {
         return this._1105049158headerTextLabel;
      }
      
      public function set headerTextLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1105049158headerTextLabel;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1105049158headerTextLabel = param1;
                  addr004a:
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerTextLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar0() : BriskImageDynaLib
      {
         return this._85291001masteryStar0;
      }
      
      public function set masteryStar0(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._85291001masteryStar0;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._85291001masteryStar0 = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar0",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar1() : BriskImageDynaLib
      {
         return this._85291000masteryStar1;
      }
      
      public function set masteryStar1(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._85291000masteryStar1;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0036:
                  this._85291000masteryStar1 = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr004f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar1",_loc2_,param1));
                        }
                     }
                     §§goto(addr005e);
                  }
               }
               §§goto(addr004f);
            }
            addr005e:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar2() : BriskImageDynaLib
      {
         return this._85290999masteryStar2;
      }
      
      public function set masteryStar2(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._85290999masteryStar2;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._85290999masteryStar2 = param1;
                  addr0034:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0034);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar3() : BriskImageDynaLib
      {
         return this._85290998masteryStar3;
      }
      
      public function set masteryStar3(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._85290998masteryStar3;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._85290998masteryStar3 = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0043);
                  }
                  §§goto(addr0053);
               }
               addr0043:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0053:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar3",_loc2_,param1));
                  }
               }
               §§goto(addr0062);
            }
            addr0062:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar4() : BriskImageDynaLib
      {
         return this._85290997masteryStar4;
      }
      
      public function set masteryStar4(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._85290997masteryStar4;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._85290997masteryStar4 = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar4",_loc2_,param1));
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
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardList() : List
      {
         return this._1690977389rewardList;
      }
      
      public function set rewardList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1690977389rewardList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1690977389rewardList = param1;
                  addr0042:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
            addr0081:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardTrophy() : BriskImageDynaLib
      {
         return this._1768858175rewardTrophy;
      }
      
      public function set rewardTrophy(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1768858175rewardTrophy;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1768858175rewardTrophy = param1;
                  addr0046:
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardTrophy",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0073);
            }
            addr0082:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardsHeadTextLabel() : LocaLabel
      {
         return this._1804648195rewardsHeadTextLabel;
      }
      
      public function set rewardsHeadTextLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1804648195rewardsHeadTextLabel;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1804648195rewardsHeadTextLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardsHeadTextLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005e);
      }
   }
}

