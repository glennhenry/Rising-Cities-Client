package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeStepDetailViewVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.events.CitysquareRewardPreviewButtonPressedEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ChallengeItemComponent extends ItemRenderer
   {
      
      private var _1776052574allGroup:VGroup;
      
      private var _585062481challengeLabel:LocaLabel;
      
      private var _1171630409challengeTypeLabel:LocaLabel;
      
      private var _1354855362goodGroup:HGroup;
      
      private var _2124921301rewardPreviewButton:MultistateButton;
      
      private var _1534234548slot1Group:Group;
      
      private var _2113293960slot1bg:BriskImageDynaLib;
      
      private var _644259718slot1item:BriskImageDynaLib;
      
      private var _1505605397slot2Group:Group;
      
      private var _2113292999slot2bg:BriskImageDynaLib;
      
      private var _645183239slot2item:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      public function ChallengeItemComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc2_)
               {
                  addr0042:
                  this.autoDrawBackground = false;
                  if(!_loc1_)
                  {
                     this.percentHeight = 100;
                     if(_loc2_ || _loc2_)
                     {
                        this.percentWidth = 100;
                        if(_loc2_)
                        {
                           §§goto(addr0072);
                        }
                        §§goto(addr0082);
                     }
                     addr0072:
                     this.mxmlContent = [this._ChallengeItemComponent_StickyNoteComponent1_c()];
                     if(_loc2_)
                     {
                        addr0082:
                        this.addEventListener("creationComplete",this.___ChallengeItemComponent_ItemRenderer1_creationComplete);
                     }
                     return;
                  }
               }
            }
            §§goto(addr0082);
         }
         §§goto(addr0042);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0043:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.data = param1;
            if(_loc2_ || Boolean(param1))
            {
               this._dataDirty = true;
               if(!(_loc3_ && _loc2_))
               {
                  addr0050:
                  invalidateProperties();
               }
               §§goto(addr0055);
            }
            §§goto(addr0050);
         }
         addr0055:
      }
      
      private function checkHeight() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            invalidateSize();
         }
      }
      
      override protected function measure() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.measure();
            if(!(_loc1_ && Boolean(this)))
            {
               addr003a:
               this.height = this.allGroup.measuredHeight + 5;
            }
            return;
         }
         §§goto(addr003a);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc1_:EventChallengeDetailViewVo = null;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         var _loc4_:EventChallengeStepDetailViewVo = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(!_loc11_)
         {
            §§push(this.data);
            if(!(_loc11_ && Boolean(_loc3_)))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!_loc11_)
               {
                  if(§§pop())
                  {
                     if(_loc10_ || Boolean(_loc3_))
                     {
                        addr0060:
                        §§pop();
                        if(!(_loc11_ && Boolean(_loc1_)))
                        {
                           §§push(this.data is EventChallengeDetailViewVo);
                           if(!(_loc11_ && Boolean(this)))
                           {
                              addr0084:
                              §§push(§§pop());
                              if(_loc10_ || Boolean(this))
                              {
                                 addr0094:
                                 var _temp_7:* = §§pop();
                                 addr0095:
                                 §§push(_temp_7);
                                 if(_temp_7)
                                 {
                                    if(_loc10_ || Boolean(_loc2_))
                                    {
                                       addr00a7:
                                       §§pop();
                                       if(_loc10_ || Boolean(_loc2_))
                                       {
                                          §§goto(addr00c9);
                                       }
                                       §§goto(addr00db);
                                    }
                                    §§goto(addr00c8);
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr00a7);
                           }
                           addr00c9:
                           §§goto(addr00b6);
                        }
                        §§goto(addr00e0);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0095);
            }
            §§goto(addr0060);
         }
         addr00b6:
         §§push(this._dataDirty);
         if(_loc10_ || Boolean(_loc1_))
         {
            addr00c8:
            §§push(§§pop());
         }
         if(§§pop())
         {
            if(!(_loc11_ && Boolean(_loc2_)))
            {
               addr00db:
               this._dataDirty = false;
            }
            addr00e0:
            _loc1_ = this.data as EventChallengeDetailViewVo;
            if(!_loc11_)
            {
               §§push(0);
               if(!_loc11_)
               {
                  _loc2_ = §§pop();
                  if(!_loc11_)
                  {
                     §§push(LocaUtils.getString("rcl.citysquare.popup.events","rcl.citysquare.popup.events.challenge.header2"));
                     if(!(_loc11_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop());
                        if(_loc10_)
                        {
                           _loc3_ = §§pop();
                           if(_loc10_)
                           {
                              this.slot1Group.visible = false;
                              if(!(_loc11_ && Boolean(_loc1_)))
                              {
                                 this.slot2Group.visible = false;
                                 if(_loc10_ || Boolean(_loc2_))
                                 {
                                    this.slot1Group.includeInLayout = false;
                                    if(!(_loc11_ && Boolean(_loc2_)))
                                    {
                                       addr0167:
                                       this.slot2Group.includeInLayout = false;
                                       if(!(_loc11_ && Boolean(this)))
                                       {
                                          §§goto(addr017c);
                                       }
                                       §§goto(addr01b9);
                                    }
                                    addr017c:
                                    §§goto(addr019d);
                                 }
                                 §§goto(addr01ac);
                              }
                           }
                           §§goto(addr0167);
                        }
                        §§goto(addr019c);
                     }
                     addr019d:
                     §§push(StringUtil.substitute(_loc3_,_loc1_.nbrOfThisChallenge,_loc1_.nbrOfChallengesOverall));
                     if(_loc10_ || Boolean(_loc2_))
                     {
                        addr019c:
                        §§push(§§pop());
                     }
                     _loc3_ = §§pop();
                     if(!(_loc11_ && Boolean(_loc2_)))
                     {
                        addr01ac:
                        this.challengeLabel.text = _loc3_;
                        if(!_loc11_)
                        {
                           addr01b9:
                           §§push(this.challengeTypeLabel);
                           §§push(LocaUtils);
                           §§push("rcl.citysquare.challengetypes");
                           §§push("rcl.citysquare.challengetypes.");
                           if(_loc10_)
                           {
                              §§push(§§pop() + _loc1_.challengeType);
                           }
                           §§pop().text = §§pop().getString(§§pop(),§§pop());
                        }
                     }
                     §§goto(addr01d7);
                  }
                  addr01d7:
                  §§goto(addr01d9);
               }
               addr01d9:
               for each(_loc4_ in _loc1_.listOfSteps)
               {
                  §§push(_loc4_.targetGoodIsEventGood);
                  if(_loc10_)
                  {
                     if(§§pop())
                     {
                        if(_loc10_ || Boolean(this))
                        {
                           §§push(LocaUtils.getString(String("rcl.citysquarequests." + _loc1_.eventLocaleId.toString()),String("rcl.citysquarequests." + _loc1_.eventLocaleId.toString() + ".goods.goodname." + _loc4_.gfxId)));
                           if(_loc10_)
                           {
                              §§push(§§pop());
                              if(_loc10_ || Boolean(_loc1_))
                              {
                                 addr0253:
                                 _loc5_ = §§pop();
                                 if(_loc10_ || Boolean(this))
                                 {
                                    addr02a3:
                                    addr02c2:
                                    §§push(LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.challengestepgoodpreview",[_loc5_]));
                                    if(_loc10_ || Boolean(_loc3_))
                                    {
                                       addr02c1:
                                       §§push(§§pop());
                                    }
                                    _loc6_ = §§pop();
                                    if(_loc10_ || Boolean(_loc3_))
                                    {
                                       §§push(_loc2_);
                                       if(_loc10_)
                                       {
                                          var _loc9_:* = §§pop();
                                          if(!(_loc11_ && Boolean(_loc1_)))
                                          {
                                             §§push(0);
                                             if(!(_loc11_ && Boolean(_loc3_)))
                                             {
                                                §§push(_loc9_);
                                                if(!_loc11_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         §§push(0);
                                                         if(_loc11_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr069c:
                                                         §§push(1);
                                                         if(_loc11_ && Boolean(_loc2_))
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(1);
                                                      if(_loc10_)
                                                      {
                                                         addr0698:
                                                         if(§§pop() === _loc9_)
                                                         {
                                                            §§goto(addr069c);
                                                         }
                                                         else
                                                         {
                                                            §§push(2);
                                                         }
                                                      }
                                                   }
                                                   addr06ca:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         §§push(this.slot1bg);
                                                         if(_loc10_ || Boolean(_loc2_))
                                                         {
                                                            §§push("gui_popups_shopBook");
                                                            if(_loc10_)
                                                            {
                                                               §§pop().dynaLibName = §§pop();
                                                               if(!(_loc11_ && Boolean(_loc1_)))
                                                               {
                                                                  §§push(_loc4_.targetGoodIsEventGood);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr030d:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc11_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§push(this.slot1item);
                                                                           if(!(_loc11_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§push(_loc1_.challengeGfxId);
                                                                              if(!(_loc11_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§pop().dynaSWFFileName = §§pop().toString();
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(this.slot1item);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       addr036c:
                                                                                       §§push(_loc1_.challengeGfxId.toString() + "_gui_popups_smallGoodIcons");
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§pop().dynaLibName = §§pop();
                                                                                          if(!(_loc11_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(this.slot1item);
                                                                                             if(!(_loc11_ && Boolean(_loc1_)))
                                                                                             {
                                                                                                §§push("small_");
                                                                                                if(!(_loc11_ && Boolean(this)))
                                                                                                {
                                                                                                   §§push(_loc4_.gfxId);
                                                                                                   if(_loc10_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         §§pop().dynaBmpSourceName = §§pop();
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§push(this.slot1bg);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr03d9:
                                                                                                               §§push("eventgood_cardboard_mini");
                                                                                                               if(!(_loc11_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  §§pop().dynaBmpSourceName = §§pop();
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr0467:
                                                                                                                     this.slot1Group.visible = true;
                                                                                                                     if(_loc10_ || Boolean(_loc1_))
                                                                                                                     {
                                                                                                                        addr047c:
                                                                                                                        this.slot1Group.includeInLayout = true;
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           addr0489:
                                                                                                                           this.slot1Group.toolTip = _loc6_;
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr05d6:
                                                                                                                        addr05f1:
                                                                                                                        addr05da:
                                                                                                                        §§push(this.slot2item);
                                                                                                                        §§push("small_");
                                                                                                                        if(!(_loc11_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           addr05f0:
                                                                                                                           addr05eb:
                                                                                                                           §§push(§§pop() + _loc4_.gfxId);
                                                                                                                        }
                                                                                                                        §§pop().dynaBmpSourceName = §§pop();
                                                                                                                        if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                                        {
                                                                                                                           addr0608:
                                                                                                                           this.slot2bg.dynaBmpSourceName = "ressource_cardboard_mini";
                                                                                                                           addr0601:
                                                                                                                           addr0605:
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr0610:
                                                                                                                           this.slot2Group.visible = true;
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           this.slot2Group.includeInLayout = true;
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        this.slot2Group.toolTip = _loc6_;
                                                                                                                        if(_loc10_ || Boolean(this))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§goto(addr0601);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0558:
                                                                                                                     §§push(this.slot2bg);
                                                                                                                     if(!(_loc11_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        addr056a:
                                                                                                                        §§push("eventgood_cardboard_mini");
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§pop().dynaBmpSourceName = §§pop();
                                                                                                                           if(_loc10_ || Boolean(_loc2_))
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr0608);
                                                                                                                        }
                                                                                                                        §§goto(addr0610);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr0605);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0605);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr045f:
                                                                                                                  §§pop().dynaBmpSourceName = §§pop();
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     §§goto(addr0467);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0489);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr045c:
                                                                                                               §§push("ressource_cardboard_mini");
                                                                                                            }
                                                                                                            §§goto(addr045f);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr04f7:
                                                                                                            §§push(this.slot2item);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr0505:
                                                                                                               §§push(_loc1_.challengeGfxId.toString() + "_gui_popups_smallGoodIcons");
                                                                                                               if(_loc10_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  §§pop().dynaLibName = §§pop();
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr0523:
                                                                                                                  §§push(this.slot2item);
                                                                                                                  if(_loc10_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     §§push("small_");
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        §§push(_loc4_.gfxId);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              §§pop().dynaBmpSourceName = §§pop();
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 §§goto(addr0558);
                                                                                                                              }
                                                                                                                              §§goto(addr0610);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr05c6:
                                                                                                                              §§pop().dynaLibName = §§pop();
                                                                                                                              if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 §§goto(addr05d6);
                                                                                                                              }
                                                                                                                              §§goto(addr0601);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr05f0);
                                                                                                                     }
                                                                                                                     §§goto(addr05f1);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr0599:
                                                                                                                     §§pop().dynaSWFFileName = null;
                                                                                                                     if(_loc10_ || Boolean(_loc1_))
                                                                                                                     {
                                                                                                                        addr05ab:
                                                                                                                        §§push(this.slot2item);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           addr05b5:
                                                                                                                           §§push("gui_popups_smallGoodIcons");
                                                                                                                           if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                                           {
                                                                                                                              §§goto(addr05c6);
                                                                                                                           }
                                                                                                                           §§goto(addr05eb);
                                                                                                                        }
                                                                                                                        §§goto(addr05da);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0610);
                                                                                                               }
                                                                                                               §§goto(addr05f1);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr05da);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0450:
                                                                                                         §§pop().dynaBmpSourceName = §§pop();
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            §§goto(addr045c);
                                                                                                            §§push(this.slot1bg);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr04c4:
                                                                                                            addr04bf:
                                                                                                            if(_loc4_.targetGoodIsEventGood)
                                                                                                            {
                                                                                                               if(!(_loc11_ && Boolean(this)))
                                                                                                               {
                                                                                                                  §§push(this.slot2item);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     §§push(_loc1_.challengeGfxId);
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        §§pop().dynaSWFFileName = §§pop().toString();
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           §§goto(addr04f7);
                                                                                                                        }
                                                                                                                        §§goto(addr0523);
                                                                                                                     }
                                                                                                                     §§goto(addr0505);
                                                                                                                  }
                                                                                                                  §§goto(addr0599);
                                                                                                               }
                                                                                                               §§goto(addr04f7);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this.slot2item);
                                                                                                               if(!(_loc11_ && Boolean(this)))
                                                                                                               {
                                                                                                                  §§goto(addr0599);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr05b5);
                                                                                                         }
                                                                                                         §§goto(addr05eb);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr044f:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§goto(addr0450);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0435:
                                                                                                   §§pop().dynaLibName = §§pop();
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr0441:
                                                                                                      §§push(this.slot1item);
                                                                                                      §§push("small_");
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         addr044a:
                                                                                                         §§goto(addr044f);
                                                                                                         §§push(_loc4_.gfxId);
                                                                                                      }
                                                                                                      §§goto(addr0450);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0601);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr041a:
                                                                                             §§push(this.slot1item);
                                                                                             if(!(_loc11_ && Boolean(this)))
                                                                                             {
                                                                                                addr042c:
                                                                                                §§push("gui_popups_smallGoodIcons");
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§goto(addr0435);
                                                                                                }
                                                                                                §§goto(addr044a);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0441);
                                                                                       }
                                                                                       §§goto(addr0450);
                                                                                    }
                                                                                    §§goto(addr0441);
                                                                                 }
                                                                                 §§goto(addr0489);
                                                                              }
                                                                              §§goto(addr036c);
                                                                           }
                                                                           §§goto(addr042c);
                                                                        }
                                                                        §§goto(addr04f7);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.slot1item);
                                                                        if(!(_loc11_ && Boolean(_loc1_)))
                                                                        {
                                                                           §§pop().dynaSWFFileName = null;
                                                                           if(!(_loc11_ && Boolean(this)))
                                                                           {
                                                                              §§goto(addr041a);
                                                                           }
                                                                           §§goto(addr05ab);
                                                                        }
                                                                     }
                                                                     §§goto(addr0441);
                                                                  }
                                                                  §§goto(addr04c4);
                                                               }
                                                               §§goto(addr0523);
                                                            }
                                                            §§goto(addr045f);
                                                         }
                                                         §§goto(addr03d9);
                                                      case 1:
                                                         §§push(this.slot2bg);
                                                         if(!_loc11_)
                                                         {
                                                            §§push("gui_popups_shopBook");
                                                            if(_loc10_)
                                                            {
                                                               §§pop().dynaLibName = §§pop();
                                                               if(_loc10_ || Boolean(_loc1_))
                                                               {
                                                                  §§goto(addr04bf);
                                                               }
                                                               §§goto(addr0610);
                                                            }
                                                            §§goto(addr0608);
                                                         }
                                                         §§goto(addr056a);
                                                   }
                                                   addr06de:
                                                   _loc2_++;
                                                   continue;
                                                   addr06c8:
                                                }
                                                §§goto(addr0698);
                                             }
                                             §§goto(addr06c8);
                                          }
                                          §§goto(addr069c);
                                       }
                                       §§goto(addr06ca);
                                    }
                                    §§goto(addr04bf);
                                 }
                                 §§goto(addr047c);
                              }
                              §§goto(addr02c1);
                           }
                           §§goto(addr0253);
                        }
                        §§goto(addr06de);
                     }
                     else
                     {
                        §§push(LocaUtils);
                        §§push("rcl.goods.goodname");
                        §§push("rcl.goods.goodname.");
                        if(!(_loc11_ && Boolean(_loc2_)))
                        {
                           §§push(§§pop() + _loc4_.localeId);
                        }
                        §§push(§§pop().getString(§§pop(),§§pop()));
                        if(_loc10_)
                        {
                           §§push(§§pop());
                           if(_loc10_)
                           {
                              _loc5_ = §§pop();
                              if(!(_loc11_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr02a3);
                              }
                              §§goto(addr0601);
                           }
                        }
                     }
                     §§goto(addr02c2);
                  }
                  §§goto(addr030d);
               }
               §§goto(addr06eb);
            }
            §§goto(addr01d7);
         }
         addr06eb:
         super.commitProperties();
      }
      
      private function onCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this.rewardPreviewButton);
            if(_loc2_)
            {
               §§pop().label = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.button.rewardpreview");
               if(!(_loc1_ && _loc1_))
               {
                  addr0051:
                  this.rewardPreviewButton.addEventListener(MouseEvent.CLICK,this.onRewardPreviewClick);
               }
               §§goto(addr005e);
            }
            §§goto(addr0051);
         }
         addr005e:
      }
      
      private function onRewardPreviewClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:CitysquareRewardPreviewButtonPressedEvent = new CitysquareRewardPreviewButtonPressedEvent(CitysquareRewardPreviewButtonPressedEvent.PREVIEW_BUTTON_PRESSED,true);
         if(_loc4_)
         {
            _loc2_.challengeNumber = (data as EventChallengeDetailViewVo).nbrOfThisChallenge;
            if(!_loc3_)
            {
               addr0049:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr0049);
      }
      
      private function _ChallengeItemComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 215;
            if(_loc3_)
            {
               _loc1_.height = 210;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0051:
                  _loc1_.tapeTop = true;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0063:
                     _loc1_.tapeBottom = false;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ChallengeItemComponent_Array2_c);
                        if(_loc3_ || Boolean(this))
                        {
                           addr0095:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr0095);
                  }
               }
               addr00ad:
               return _loc1_;
            }
            §§goto(addr0063);
         }
         §§goto(addr0051);
      }
      
      private function _ChallengeItemComponent_Array2_c() : Array
      {
         return [this._ChallengeItemComponent_VGroup1_i()];
      }
      
      private function _ChallengeItemComponent_VGroup1_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._ChallengeItemComponent_LocaLabel1_i(),this._ChallengeItemComponent_Group1_c(),this._ChallengeItemComponent_HGroup2_i(),this._ChallengeItemComponent_MultistateButton1_i()];
                        if(!(_loc2_ && _loc3_))
                        {
                           addr008e:
                           _loc1_.id = "allGroup";
                           if(!_loc2_)
                           {
                              addr0099:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       addr00ba:
                                       this.allGroup = _loc1_;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00cc:
                                          BindingManager.executeBindings(this,"allGroup",this.allGroup);
                                       }
                                    }
                                 }
                                 §§goto(addr00d9);
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr00cc);
                        }
                        addr00d9:
                        return _loc1_;
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0099);
            }
            §§goto(addr00cc);
         }
         §§goto(addr0099);
      }
      
      private function _ChallengeItemComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               addr0039:
               _loc1_.top = 4;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.text = "notSet challengeLabel";
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.styleName = "challengeLabel";
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "challengeLabel";
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr00b3:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr00c4);
                                 }
                                 §§goto(addr00ce);
                              }
                           }
                           addr00c4:
                           this.challengeLabel = _loc1_;
                           if(_loc3_)
                           {
                              addr00ce:
                              BindingManager.executeBindings(this,"challengeLabel",this.challengeLabel);
                           }
                           §§goto(addr00db);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr00ce);
                  }
               }
               §§goto(addr00b3);
            }
            addr00db:
            return _loc1_;
         }
         §§goto(addr0039);
      }
      
      private function _ChallengeItemComponent_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._ChallengeItemComponent_HGroup1_c(),this._ChallengeItemComponent_LocaLabel2_i()];
               if(_loc3_)
               {
                  §§goto(addr0058);
               }
            }
            §§goto(addr006c);
         }
         addr0058:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && Boolean(this)))
            {
               addr006c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._ChallengeItemComponent_BriskImageDynaLib1_c(),this._ChallengeItemComponent_BriskImageDynaLib2_c(),this._ChallengeItemComponent_BriskImageDynaLib3_c()];
                  §§goto(addr0051);
               }
               §§goto(addr008c);
            }
            addr0051:
            if(!_loc2_)
            {
               addr0078:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr008c:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "bluemarker_small_left";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaLibName = "gui_popup_citysquare_general";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.verticalCenter = 0;
                     addr006c:
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr009c:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr009c);
            }
            §§goto(addr006c);
         }
         §§goto(addr009c);
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_popup_citysquare_general";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     §§goto(addr0054);
                  }
               }
               §§goto(addr0089);
            }
            addr0054:
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0089:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0089);
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "bluemarker_small_right";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaLibName = "gui_popup_citysquare_general";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc3_)
                     {
                        addr0079:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0079);
               }
            }
            addr0089:
            return _loc1_;
         }
         §§goto(addr0079);
      }
      
      private function _ChallengeItemComponent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.top = 4;
               if(!_loc2_)
               {
                  addr0046:
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.styleName = "challengeTypeLabel";
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.id = "challengeTypeLabel";
                        if(!_loc2_)
                        {
                           addr0081:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr008d:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00aa:
                                    this.challengeTypeLabel = _loc1_;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr00bc:
                                       BindingManager.executeBindings(this,"challengeTypeLabel",this.challengeTypeLabel);
                                    }
                                    §§goto(addr00c9);
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr008d);
                     }
                     addr00c9:
                     return _loc1_;
                  }
                  §§goto(addr0081);
               }
               §§goto(addr00bc);
            }
         }
         §§goto(addr0046);
      }
      
      private function _ChallengeItemComponent_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr0033:
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.paddingTop = 2;
                  if(_loc3_ || _loc2_)
                  {
                     addr0065:
                     _loc1_.mxmlContent = [this._ChallengeItemComponent_Group2_i(),this._ChallengeItemComponent_Group3_i()];
                     if(_loc3_)
                     {
                        _loc1_.id = "goodGroup";
                        if(_loc3_)
                        {
                           addr0086:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 §§goto(addr009a);
                              }
                              §§goto(addr00c8);
                           }
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr0086);
                  }
                  addr009a:
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr00b6:
                     this.goodGroup = _loc1_;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00c8:
                        BindingManager.executeBindings(this,"goodGroup",this.goodGroup);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0065);
            }
            §§goto(addr00c8);
         }
         §§goto(addr0033);
      }
      
      private function _ChallengeItemComponent_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.visible = false;
            if(!_loc3_)
            {
               _loc1_.includeInLayout = false;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ChallengeItemComponent_BriskImageDynaLib4_i(),this._ChallengeItemComponent_BriskImageDynaLib5_i()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0074);
            }
            §§goto(addr00a4);
         }
         addr0061:
         _loc1_.id = "slot1Group";
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0074:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0088:
                  _loc1_.document = this;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr00a4:
                     this.slot1Group = _loc1_;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr00b6:
                        BindingManager.executeBindings(this,"slot1Group",this.slot1Group);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr00c3);
            }
            §§goto(addr00a4);
         }
         addr00c3:
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc2_)
            {
               addr002b:
               _loc1_.dynaBmpSourceName = "citysquare_good_free";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "slot1bg";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr0093);
                           }
                        }
                        §§goto(addr009d);
                     }
                     addr0093:
                     this.slot1bg = _loc1_;
                     if(!_loc2_)
                     {
                        addr009d:
                        BindingManager.executeBindings(this,"slot1bg",this.slot1bg);
                     }
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr009d);
            }
            addr00aa:
            return _loc1_;
         }
         §§goto(addr002b);
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.id = "slot1item";
                  if(!_loc3_)
                  {
                     addr005a:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0072:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr007b);
                           }
                           §§goto(addr008d);
                        }
                     }
                  }
                  addr007b:
                  this.slot1item = _loc1_;
                  if(_loc2_ || Boolean(this))
                  {
                     addr008d:
                     BindingManager.executeBindings(this,"slot1item",this.slot1item);
                  }
                  return _loc1_;
               }
               §§goto(addr0072);
            }
            §§goto(addr005a);
         }
         §§goto(addr008d);
      }
      
      private function _ChallengeItemComponent_Group3_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.visible = false;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.includeInLayout = false;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ChallengeItemComponent_BriskImageDynaLib6_i(),this._ChallengeItemComponent_BriskImageDynaLib7_i()];
                  addr003c:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "slot2Group";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr009b:
                                 this.slot2Group = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00a5:
                                    BindingManager.executeBindings(this,"slot2Group",this.slot2Group);
                                 }
                              }
                              §§goto(addr00b2);
                           }
                        }
                        §§goto(addr009b);
                     }
                  }
                  §§goto(addr00a5);
               }
               addr00b2:
               return _loc1_;
            }
            §§goto(addr00a5);
         }
         §§goto(addr003c);
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "citysquare_good_free";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "slot2bg";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0085:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0096:
                              this.slot2bg = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00a0:
                                 BindingManager.executeBindings(this,"slot2bg",this.slot2bg);
                              }
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr0096);
                  }
                  addr00ad:
                  return _loc1_;
               }
               §§goto(addr0096);
            }
            §§goto(addr0085);
         }
         §§goto(addr0096);
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "slot2item";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr006e);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr008b);
                  }
                  addr006e:
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr008b:
                     this.slot2item = _loc1_;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr009d:
                        BindingManager.executeBindings(this,"slot2item",this.slot2item);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr008b);
            }
         }
         §§goto(addr009d);
      }
      
      private function _ChallengeItemComponent_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.maxWidth = 180;
            if(_loc3_)
            {
               _loc1_.width = 145;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.useSmallSkin = true;
                  if(!_loc2_)
                  {
                     _loc1_.showSparkle = true;
                     if(!_loc2_)
                     {
                        addr0053:
                        _loc1_.focusEnabled = false;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.tabFocusEnabled = false;
                           if(_loc3_)
                           {
                              _loc1_.id = "rewardPreviewButton";
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr008f:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00b0:
                                       _loc1_.document = this;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr00c1:
                                          this.rewardPreviewButton = _loc1_;
                                          if(!_loc2_)
                                          {
                                             addr00cb:
                                             BindingManager.executeBindings(this,"rewardPreviewButton",this.rewardPreviewButton);
                                          }
                                       }
                                    }
                                    §§goto(addr00d8);
                                 }
                                 §§goto(addr00c1);
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0053);
               }
               addr00d8:
               return _loc1_;
            }
            §§goto(addr00cb);
         }
         §§goto(addr008f);
      }
      
      public function ___ChallengeItemComponent_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.onCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allGroup() : VGroup
      {
         return this._1776052574allGroup;
      }
      
      public function set allGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1776052574allGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1776052574allGroup = param1;
                  if(!_loc3_)
                  {
                     addr0041:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeLabel() : LocaLabel
      {
         return this._585062481challengeLabel;
      }
      
      public function set challengeLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._585062481challengeLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._585062481challengeLabel = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeTypeLabel() : LocaLabel
      {
         return this._1171630409challengeTypeLabel;
      }
      
      public function set challengeTypeLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1171630409challengeTypeLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr0040:
                  this._1171630409challengeTypeLabel = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeTypeLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get goodGroup() : HGroup
      {
         return this._1354855362goodGroup;
      }
      
      public function set goodGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1354855362goodGroup;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1354855362goodGroup = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr007f);
            }
         }
         addr008e:
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardPreviewButton() : MultistateButton
      {
         return this._2124921301rewardPreviewButton;
      }
      
      public function set rewardPreviewButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2124921301rewardPreviewButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._2124921301rewardPreviewButton = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardPreviewButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1Group() : Group
      {
         return this._1534234548slot1Group;
      }
      
      public function set slot1Group(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1534234548slot1Group;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1534234548slot1Group = param1;
                  addr003e:
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006b);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1Group",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1bg() : BriskImageDynaLib
      {
         return this._2113293960slot1bg;
      }
      
      public function set slot1bg(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2113293960slot1bg;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._2113293960slot1bg = param1;
                  addr0041:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1bg",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1item() : BriskImageDynaLib
      {
         return this._644259718slot1item;
      }
      
      public function set slot1item(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._644259718slot1item;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._644259718slot1item = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1item",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2Group() : Group
      {
         return this._1505605397slot2Group;
      }
      
      public function set slot2Group(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1505605397slot2Group;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1505605397slot2Group = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr0065);
               }
               addr004e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2Group",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2bg() : BriskImageDynaLib
      {
         return this._2113292999slot2bg;
      }
      
      public function set slot2bg(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2113292999slot2bg;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2113292999slot2bg = param1;
                  if(!_loc3_)
                  {
                     addr004e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2bg",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2item() : BriskImageDynaLib
      {
         return this._645183239slot2item;
      }
      
      public function set slot2item(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._645183239slot2item;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._645183239slot2item = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0073);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0073:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2item",_loc2_,param1));
                  }
               }
               §§goto(addr0082);
            }
         }
         addr0082:
      }
   }
}

