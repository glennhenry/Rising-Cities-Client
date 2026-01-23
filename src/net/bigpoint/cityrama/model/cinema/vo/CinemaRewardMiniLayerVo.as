package net.bigpoint.cityrama.model.cinema.vo
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.common.vo.StepMarkerVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.util.LocaUtils;
   
   public class CinemaRewardMiniLayerVo
   {
      
      private var _viewsLeft:uint;
      
      private var _maxViews:uint;
      
      private var _cinemaLocaleId:String;
      
      private var _paymentPack:ConfigPaymentPackDTO;
      
      public function CinemaRewardMiniLayerVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public function set viewsLeft(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._viewsLeft = param1;
         }
      }
      
      public function set maxViews(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._maxViews = param1;
         }
      }
      
      public function set cinemaLocaleId(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._cinemaLocaleId = param1;
         }
      }
      
      public function set paymentPack(param1:ConfigPaymentPackDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._paymentPack = param1;
         }
      }
      
      public function get flavourText() : String
      {
         return LocaUtils.getString("rcl.miniLayer.cinemaReward","rcl.miniLayer.cinemaReward.flavour",[this.rcAmount]);
      }
      
      public function get headerText() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(LocaUtils);
         §§push("rcl.playfielditems.name");
         §§push("rcl.playfielditems.name.");
         if(_loc1_ || _loc1_)
         {
            §§push(§§pop() + this._cinemaLocaleId);
            if(!_loc2_)
            {
               §§push(§§pop() + ".capital");
            }
         }
         return §§pop().getString(§§pop(),§§pop());
      }
      
      public function get layerText() : String
      {
         return LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.postit.videoCount",[this._viewsLeft]);
      }
      
      public function get okButtonLabel() : String
      {
         return LocaUtils.getString("rcl.miniLayer.cinemaReward","rcl.miniLayer.cinemaReward.button.ok.capital");
      }
      
      public function get watchMoreButtonLabel() : String
      {
         return LocaUtils.getString("rcl.miniLayer.cinemaReward","rcl.miniLayer.cinemaReward.button.more.capital");
      }
      
      public function get watchMoreButtonTooltip() : String
      {
         return LocaUtils.getString("rcl.tooltips.cinema","rcl.tooltips.cinema.button.more");
      }
      
      public function get watchMoreButtonIncludeInLayout() : Boolean
      {
         return this._viewsLeft > 0;
      }
      
      public function get stepBarData() : StepMarkerVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:StepMarkerVo = new StepMarkerVo();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.currentProgress = Math.max(this._maxViews - this._viewsLeft,0);
            if(!_loc4_)
            {
               _loc1_.hasLastInterval = false;
            }
         }
         var _loc2_:int = 1;
         while(_loc2_ <= this._maxViews)
         {
            _loc1_.stepInactiveStyles.push("cinemaInactive");
            if(_loc3_)
            {
               _loc1_.stepActiveStyles.push("active");
               if(_loc4_ && Boolean(_loc1_))
               {
                  break;
               }
            }
            _loc1_.progressSteps.push(_loc2_);
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc2_++;
               if(!(_loc3_ || Boolean(_loc1_)))
               {
                  break;
               }
            }
         }
         return _loc1_;
      }
      
      public function get rcAmount() : uint
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._paymentPack);
            if(_loc1_)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this._paymentPack);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(§§pop().resources);
                                 if(_loc1_)
                                 {
                                    addr005f:
                                    var _temp_3:* = §§pop();
                                    addr0060:
                                    §§push(_temp_3);
                                    if(_temp_3)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr0069:
                                          §§pop();
                                          if(!_loc2_)
                                          {
                                             addr006f:
                                             §§push(this._paymentPack);
                                             if(_loc1_)
                                             {
                                                §§goto(addr008b);
                                             }
                                             §§goto(addr00a0);
                                          }
                                          §§goto(addr009c);
                                       }
                                    }
                                    §§goto(addr008b);
                                 }
                                 §§goto(addr0069);
                              }
                              §§goto(addr00a0);
                           }
                           §§goto(addr006f);
                        }
                        addr008b:
                        §§goto(addr0082);
                     }
                     §§goto(addr005f);
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0069);
            }
            addr0082:
            if(Boolean(§§pop().resources[0]))
            {
               if(_loc1_ || Boolean(this))
               {
                  addr00a0:
                  return this._paymentPack.resources[0].outputAmount;
                  addr009c:
               }
            }
            return 0;
         }
         §§goto(addr006f);
      }
      
      public function get rewardData() : RewardItemComponentVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:ConfigOutputDTO = null;
         var _loc2_:Object = null;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            §§push(this._paymentPack);
            if(_loc3_ || Boolean(_loc1_))
            {
               §§push(§§pop());
               if(_loc3_ || Boolean(_loc1_))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              addr0065:
                              §§push(this._paymentPack);
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 §§push(§§pop().resources);
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr0088:
                                    var _temp_8:* = §§pop();
                                    addr0089:
                                    §§push(_temp_8);
                                    if(_temp_8)
                                    {
                                       if(!(_loc4_ && Boolean(_loc1_)))
                                       {
                                          addr009b:
                                          §§pop();
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             addr00aa:
                                             §§push(this._paymentPack);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§goto(addr00ce);
                                             }
                                             §§goto(addr00d6);
                                          }
                                          §§goto(addr00d2);
                                       }
                                    }
                                    addr00ce:
                                    §§goto(addr00c5);
                                 }
                                 §§goto(addr009b);
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0088);
            }
            addr00c5:
            if(Boolean(§§pop().resources[0]))
            {
               addr00d6:
               _loc1_ = this._paymentPack.resources[0];
               _loc2_ = new Object();
               addr00d2:
               if(_loc3_)
               {
                  _loc2_.type = RewardItemComponentVo.TYPE_SPECIAL_GOOD;
                  if(_loc3_ || _loc3_)
                  {
                     _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
                     if(!_loc4_)
                     {
                        addr0117:
                        _loc2_.useNew = false;
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           _loc2_.cid = _loc1_.resourceConfig.id;
                           if(_loc3_)
                           {
                              addr013b:
                              if(_loc1_.resourceConfig.type != ServerResConst.RESOURCE_REALCURRENCY)
                              {
                                 return null;
                              }
                              if(_loc3_)
                              {
                                 _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_RC;
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    addr0168:
                                    _loc2_.itemIcon = "rc_icon_medium";
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       _loc2_.itemIconLib = "gui_resources_icons";
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          addr01ac:
                                          _loc2_.price = _loc1_.outputAmount;
                                          if(!_loc3_)
                                          {
                                             §§goto(addr01c3);
                                          }
                                       }
                                       return new RewardItemComponentVo(_loc2_);
                                    }
                                 }
                              }
                              §§goto(addr01ac);
                           }
                           §§goto(addr0168);
                        }
                        §§goto(addr01ac);
                     }
                     §§goto(addr0168);
                  }
                  §§goto(addr013b);
               }
               §§goto(addr0117);
            }
            addr01c3:
            return null;
         }
         §§goto(addr0065);
      }
   }
}

