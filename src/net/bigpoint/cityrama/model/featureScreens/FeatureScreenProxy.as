package net.bigpoint.cityrama.model.featureScreens
{
   import flash.utils.Dictionary;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.featureScreens.vo.BigFeatureScreenVO;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureCharacterScreenVo;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureScreenStepDataVo;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureScreenVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FeatureScreenProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FeatureScreenProxy";
      
      public static const FEATURE_NEEDS:String = "FEATURE_NEEDS";
      
      public static const FEATURE_PERMISSIONS:String = "FEATURE_PERMISSIONS";
      
      public static const FEATURE_BALANCE:String = "FEATURE_BALANCE";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "FeatureScreenProxy";
         if(_loc1_)
         {
            FEATURE_NEEDS = "FEATURE_NEEDS";
            if(!(_loc2_ && FeatureScreenProxy))
            {
               addr0041:
               FEATURE_PERMISSIONS = "FEATURE_PERMISSIONS";
               if(_loc1_)
               {
                  FEATURE_BALANCE = "FEATURE_BALANCE";
               }
            }
            §§goto(addr0058);
         }
         §§goto(addr0041);
      }
      addr0058:
      
      private var _featureScreenVoDic:Dictionary;
      
      private var _featureCharacterScreenVoDic:Dictionary;
      
      private var _bigFeatureScreenVoDic:Dictionary;
      
      public function FeatureScreenProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            super(param1,param2);
            if(!(_loc3_ && Boolean(param2)))
            {
               this._featureScreenVoDic = new Dictionary();
               addr003f:
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr0064);
               }
               §§goto(addr007a);
            }
            addr0064:
            this._bigFeatureScreenVoDic = new Dictionary();
            if(!(_loc3_ && Boolean(param2)))
            {
               addr007a:
               this._featureCharacterScreenVoDic = new Dictionary();
            }
            return;
         }
         §§goto(addr003f);
      }
      
      public function getFeatureScreenVo(param1:String) : FeatureScreenVo
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(this._featureScreenVoDic[param1] == null)
            {
               if(!_loc3_)
               {
                  addr003d:
                  this.fillFeatureScreenVoDic(param1);
               }
            }
            return this._featureScreenVoDic[param1];
         }
         §§goto(addr003d);
      }
      
      public function getFeatureCharacterScreenVo(param1:Number) : FeatureCharacterScreenVo
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._featureCharacterScreenVoDic[param1] == null)
            {
               if(!_loc3_)
               {
                  this.fillFeatureCharacterDic(param1);
               }
            }
         }
         return this._featureCharacterScreenVoDic[param1];
      }
      
      public function getBigFeatureScreenVo(param1:Number) : BigFeatureScreenVO
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(this._bigFeatureScreenVoDic[param1] == null)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0046:
                  this.fillBigFeatureDic(param1);
               }
            }
            return this._bigFeatureScreenVoDic[param1];
         }
         §§goto(addr0046);
      }
      
      private function fillBigFeatureDic(param1:Number) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:BigFeatureScreenVO = new BigFeatureScreenVO();
         var _loc3_:String = "rcl.featurescreens.infrastructure.";
         var _loc4_:* = param1;
         if(_loc5_ || Boolean(this))
         {
            §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_GRADES);
            if(_loc5_)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr0b81:
                        §§push(1);
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SUCCESS_CHANCE);
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc6_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr0b81);
                              }
                              else
                              {
                                 addr0ccd:
                                 §§push(7);
                                 if(_loc5_ || Boolean(this))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_DEVICES);
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 §§push(_loc4_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(2);
                                          if(_loc5_ || Boolean(this))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0d49:
                                          §§push(9);
                                          if(_loc6_ && Boolean(_loc3_))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_BOOSTERPACKS);
                                       if(!_loc6_)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc6_ && Boolean(this)))
                                          {
                                             addr0be3:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(3);
                                                   if(_loc5_ || Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr0d83:
                                                   §§push(10);
                                                   if(_loc6_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_CURSOR_MODE);
                                                if(_loc5_)
                                                {
                                                   §§push(_loc4_);
                                                   if(!(_loc6_ && Boolean(_loc3_)))
                                                   {
                                                      addr0c1d:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_ || Boolean(_loc2_))
                                                         {
                                                            §§push(4);
                                                            if(_loc5_ || Boolean(_loc3_))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr0d83);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_EFFECTS);
                                                         if(_loc5_)
                                                         {
                                                            addr0c4f:
                                                            §§push(_loc4_);
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr0c61:
                                                                     §§push(5);
                                                                     if(_loc5_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0ccd);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_MANAGEMENT_LAYER);
                                                                  if(_loc5_ || Boolean(param1))
                                                                  {
                                                                     addr0c81:
                                                                     §§push(_loc4_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr0c89:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc5_ || Boolean(this))
                                                                           {
                                                                              §§push(6);
                                                                              if(_loc6_ && Boolean(this))
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0d07:
                                                                              §§push(8);
                                                                              if(_loc6_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(QuestGFXIDLayerConstants.BIG_FEATURE_CAPITALISTS);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr0cbb:
                                                                              §§push(_loc4_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr0ccd);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0db5:
                                                                                       §§push(11);
                                                                                       if(_loc6_ && Boolean(_loc3_))
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(QuestGFXIDLayerConstants.BIG_FEATURE_PRODUCTION_POINTS);
                                                                                    if(!(_loc6_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       addr0cf5:
                                                                                       §§push(_loc4_);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§goto(addr0d07);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0de2:
                                                                                                §§push(12);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0dfa);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(QuestGFXIDLayerConstants.BIG_FEATURE_PF2_BRIDGE);
                                                                                             if(_loc5_ || Boolean(_loc2_))
                                                                                             {
                                                                                                addr0d27:
                                                                                                §§push(_loc4_);
                                                                                                if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   addr0d37:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         §§goto(addr0d49);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr0d83);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(QuestGFXIDLayerConstants.BIG_FEATURE_PF2_COASTAL_BUILDINGS);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         if(!(_loc6_ && Boolean(param1)))
                                                                                                         {
                                                                                                            addr0d79:
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§goto(addr0d83);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr0de2);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(QuestGFXIDLayerConstants.BIG_FEATURE_SUBLEVEL);
                                                                                                               if(!(_loc6_ && Boolean(this)))
                                                                                                               {
                                                                                                                  addr0da3:
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr0dab:
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§goto(addr0db5);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr0de2);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr0dde);
                                                                                                                     }
                                                                                                                     §§goto(addr0de2);
                                                                                                                  }
                                                                                                                  addr0dde:
                                                                                                               }
                                                                                                               §§goto(addr0ddc);
                                                                                                            }
                                                                                                            §§goto(addr0de2);
                                                                                                         }
                                                                                                         §§goto(addr0dab);
                                                                                                      }
                                                                                                      addr0ddc:
                                                                                                      if(QuestGFXIDLayerConstants.BIG_FEATURE_MASTERY === _loc4_)
                                                                                                      {
                                                                                                         §§goto(addr0de2);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(13);
                                                                                                      }
                                                                                                      §§goto(addr0dfa);
                                                                                                   }
                                                                                                   §§goto(addr0dfa);
                                                                                                }
                                                                                                §§goto(addr0dde);
                                                                                             }
                                                                                             §§goto(addr0da3);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0dab);
                                                                                    }
                                                                                    §§goto(addr0d27);
                                                                                 }
                                                                                 §§goto(addr0dfa);
                                                                              }
                                                                              §§goto(addr0d37);
                                                                           }
                                                                           §§goto(addr0ddc);
                                                                        }
                                                                        §§goto(addr0dfa);
                                                                     }
                                                                     §§goto(addr0d79);
                                                                  }
                                                                  §§goto(addr0ddc);
                                                               }
                                                               §§goto(addr0dfa);
                                                            }
                                                            §§goto(addr0d37);
                                                         }
                                                         §§goto(addr0cf5);
                                                      }
                                                      §§goto(addr0dfa);
                                                   }
                                                   §§goto(addr0dab);
                                                }
                                                §§goto(addr0cbb);
                                             }
                                             §§goto(addr0dfa);
                                          }
                                          §§goto(addr0dab);
                                       }
                                       §§goto(addr0ddc);
                                    }
                                    §§goto(addr0dfa);
                                 }
                                 §§goto(addr0c1d);
                              }
                              §§goto(addr0c4f);
                           }
                           §§goto(addr0dfa);
                        }
                        §§goto(addr0c89);
                     }
                     §§goto(addr0c81);
                  }
                  addr0dfa:
                  switch(§§pop())
                  {
                     case 0:
                        _loc2_.layerStyleName = "infrastructureFeatureScreen";
                        if(!_loc6_)
                        {
                           _loc2_.dynaLibName = "gui_popup_infrastructurequestscreens";
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              §§push(_loc2_);
                              §§push(LocaUtils);
                              §§push(_loc3_ + "securitydevices");
                              if(_loc5_ || Boolean(_loc2_))
                              {
                                 §§push("");
                                 if(!(_loc6_ && Boolean(this)))
                                 {
                                    addr0071:
                                    §§push(§§pop() + §§pop());
                                    §§push(_loc3_ + "securitydevices");
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       addr0084:
                                       §§push(§§pop() + ".title");
                                    }
                                    §§pop().popuptitle = §§pop().getString(§§pop(),§§pop());
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       §§push(_loc2_);
                                       §§push(LocaUtils);
                                       §§push(_loc3_ + "securitydevices");
                                       if(!_loc6_)
                                       {
                                          §§push("");
                                          if(_loc5_ || Boolean(this))
                                          {
                                             addr00bb:
                                             §§push(§§pop() + §§pop());
                                             §§push(_loc3_ + "securitydevices");
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                addr00ce:
                                                §§push(§§pop() + ".flavour");
                                             }
                                             §§pop().popupflavour = §§pop().getString(§§pop(),§§pop());
                                             if(!_loc6_)
                                             {
                                                _loc2_.dynaMCName = "feature_securitydevices";
                                                if(_loc5_)
                                                {
                                                   _loc2_.texts = new <String>[LocaUtils.getString(_loc3_ + "securitydevices" + "",_loc3_ + "securitydevices" + ".text.textfield1"),LocaUtils.getString(_loc3_ + "securitydevices" + "",_loc3_ + "securitydevices" + ".text.textfield2"),LocaUtils.getString(_loc3_ + "securitydevices" + "",_loc3_ + "securitydevices" + ".text.textfield3"),LocaUtils.getString(_loc3_ + "securitydevices" + "",_loc3_ + "securitydevices" + ".text.textfield4")];
                                                   if(_loc5_ || Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr0599:
                                                   _loc2_.dynaMCName = "feature_improvementEffects";
                                                   if(_loc5_ || Boolean(_loc3_))
                                                   {
                                                      addr05af:
                                                      _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.title");
                                                      if(!(_loc6_ && Boolean(_loc3_)))
                                                      {
                                                         addr05cd:
                                                         _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.flavour");
                                                         if(_loc5_ || Boolean(_loc3_))
                                                         {
                                                            addr05eb:
                                                            _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield1"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield2"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield3"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield4"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield5"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.textfield6")];
                                                            if(_loc5_ || Boolean(_loc2_))
                                                            {
                                                               _loc2_.titles = new <String>[LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox1"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox2"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox3"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox4"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox5"),LocaUtils.getString("rcl.featurescreens.improvements.effects","rcl.featurescreens.improvements.effects.text.titlebox6")];
                                                               addr0677:
                                                               if(_loc6_)
                                                               {
                                                                  addr0761:
                                                                  _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.improvements.management","rcl.featurescreens.improvements.management.text.textfield1"),LocaUtils.getString("rcl.featurescreens.improvements.management","rcl.featurescreens.improvements.management.text.textfield2")];
                                                                  if(_loc5_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr07ae:
                                                            _loc2_.dynaMCName = "feature_capitalists";
                                                            if(!(_loc6_ && Boolean(this)))
                                                            {
                                                               addr07c4:
                                                               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.capitalists","rcl.featurescreens.capitalists.title.capital");
                                                               if(!(_loc6_ && Boolean(param1)))
                                                               {
                                                                  _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.capitalists","rcl.featurescreens.capitalists.flavour");
                                                                  if(!(_loc6_ && Boolean(_loc3_)))
                                                                  {
                                                                     addr0800:
                                                                     _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.capitalists","rcl.featurescreens.capitalists.text.textfield1")];
                                                                     if(_loc6_ && Boolean(_loc3_))
                                                                     {
                                                                        addr09ab:
                                                                        _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.coastalBuildings.new","rcl.featurescreens.coastalBuildings.new.flavour");
                                                                        if(!(_loc6_ && Boolean(_loc3_)))
                                                                        {
                                                                           addr09c9:
                                                                           _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.coastalBuildings.new","rcl.featurescreens.coastalBuildings.new.text.textfield1"),LocaUtils.getString("rcl.featurescreens.coastalBuildings.new","rcl.featurescreens.coastalBuildings.new.text.textfield2")];
                                                                           if(_loc6_)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0abf:
                                                                     _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.mastery","rcl.featurescreens.mastery.flavour");
                                                                     if(!(_loc5_ || Boolean(param1)))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr0add:
                                                                     _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.mastery","rcl.featurescreens.mastery.text.textfield1")];
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  addr0e31:
                                                                  this._bigFeatureScreenVoDic[param1] = _loc2_;
                                                                  break;
                                                               }
                                                               addr0a58:
                                                               _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.sublevel","rcl.featurescreens.sublevel.text.textfield1")];
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr0abf);
                                                               }
                                                               §§goto(addr0e31);
                                                               §§goto(addr0abf);
                                                            }
                                                            else
                                                            {
                                                               addr0aa9:
                                                               _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.mastery","rcl.featurescreens.mastery.title.capital");
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr0abf);
                                                               }
                                                            }
                                                            §§goto(addr0add);
                                                         }
                                                         §§goto(addr0e31);
                                                      }
                                                      §§goto(addr0677);
                                                   }
                                                   §§goto(addr0aa9);
                                                }
                                             }
                                             else
                                             {
                                                addr03d2:
                                                _loc2_.dynaMCName = "feature_securitygrades";
                                                if(_loc5_ || Boolean(param1))
                                                {
                                                   _loc2_.texts = new <String>[LocaUtils.getString(_loc3_ + "securitygrades" + "",_loc3_ + "securitygrades" + ".text.textfield1"),LocaUtils.getString(_loc3_ + "securitygrades" + "",_loc3_ + "securitygrades" + ".text.textfield2"),LocaUtils.getString(_loc3_ + "securitygrades" + "",_loc3_ + "securitygrades" + ".text.textfield3")];
                                                   if(!(_loc5_ || Boolean(_loc3_)))
                                                   {
                                                      addr0518:
                                                      _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.improvements.cursorMode","rcl.featurescreens.improvements.cursorMode.title");
                                                      if(_loc5_)
                                                      {
                                                         _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.improvements.cursorMode","rcl.featurescreens.improvements.cursorMode.flavour");
                                                         if(!_loc6_)
                                                         {
                                                            _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.improvements.cursorMode","rcl.featurescreens.improvements.cursorMode.text.textfield1"),LocaUtils.getString("rcl.featurescreens.improvements.cursorMode","rcl.featurescreens.improvements.cursorMode.text.textfield2")];
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr09ab);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr098d:
                                                            _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.coastalBuildings.new","rcl.featurescreens.coastalBuildings.new.title.capital");
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               §§goto(addr09ab);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0934:
                                                         _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.secondPlayfield.new","rcl.featurescreens.secondPlayfield.new.text.textfield1")];
                                                         if(_loc6_ && Boolean(_loc3_))
                                                         {
                                                            addr0a42:
                                                            _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.sublevel","rcl.featurescreens.sublevel.flavour");
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr0a58);
                                                            }
                                                            else
                                                            {
                                                               addr0a9b:
                                                               _loc2_.dynaMCName = "feature_mastery";
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr0aa9);
                                                            }
                                                            §§goto(addr0add);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr0e31);
                                                }
                                                §§goto(addr0934);
                                             }
                                             §§goto(addr0e31);
                                          }
                                          §§goto(addr00ce);
                                       }
                                       §§goto(addr00bb);
                                    }
                                    else
                                    {
                                       addr0743:
                                       _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.improvements.management","rcl.featurescreens.improvements.management.flavour");
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr0761);
                                       }
                                       else
                                       {
                                          addr0916:
                                          _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.secondPlayfield.new","rcl.featurescreens.secondPlayfield.new.flavour");
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr0934);
                                          }
                                       }
                                       §§goto(addr0e31);
                                    }
                                 }
                                 §§goto(addr0084);
                              }
                              §§goto(addr0071);
                           }
                           else
                           {
                              addr072d:
                              _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.improvements.management","rcl.featurescreens.improvements.management.title");
                              if(!_loc6_)
                              {
                                 §§goto(addr0743);
                              }
                           }
                           §§goto(addr0e31);
                        }
                        §§goto(addr0abf);
                     case 1:
                        _loc2_.layerStyleName = "infrastructureFeatureScreen";
                        if(_loc5_ || Boolean(param1))
                        {
                           _loc2_.dynaLibName = "gui_popup_infrastructurequestscreens";
                           if(_loc5_)
                           {
                              §§push(_loc2_);
                              §§push(LocaUtils);
                              §§push(_loc3_ + "emergencyhandling");
                              if(_loc5_)
                              {
                                 §§push("");
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    addr01c2:
                                    §§push(§§pop() + §§pop());
                                    §§push(_loc3_ + "emergencyhandling");
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       addr01d5:
                                       §§push(§§pop() + ".title");
                                    }
                                    §§pop().popuptitle = §§pop().getString(§§pop(),§§pop());
                                    if(_loc5_ || Boolean(param1))
                                    {
                                       §§push(_loc2_);
                                       §§push(LocaUtils);
                                       §§push(_loc3_ + "emergencyhandling");
                                       if(!(_loc6_ && Boolean(param1)))
                                       {
                                          §§push("");
                                          if(_loc5_)
                                          {
                                             addr020c:
                                             §§push(§§pop() + §§pop());
                                             §§push(_loc3_ + "emergencyhandling");
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                addr021f:
                                                §§push(§§pop() + ".flavour");
                                             }
                                             §§pop().popupflavour = §§pop().getString(§§pop(),§§pop());
                                             if(_loc5_)
                                             {
                                                _loc2_.dynaMCName = "feature_emergencyhandling";
                                                if(_loc5_)
                                                {
                                                   _loc2_.texts = new <String>[LocaUtils.getString(_loc3_ + "emergencyhandling" + "",_loc3_ + "emergencyhandling" + ".text.textfield1"),LocaUtils.getString(_loc3_ + "emergencyhandling" + "",_loc3_ + "emergencyhandling" + ".text.textfield2"),LocaUtils.getString(_loc3_ + "emergencyhandling" + "",_loc3_ + "emergencyhandling" + ".text.textfield3")];
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      _loc2_.titles = new <String>[LocaUtils.getString(_loc3_ + "emergencyhandling" + "",_loc3_ + "emergencyhandling" + ".text.titlebox1"),LocaUtils.getString(_loc3_ + "emergencyhandling" + "",_loc3_ + "emergencyhandling" + ".text.titlebox2"),LocaUtils.getString(_loc3_ + "emergencyhandling" + "",_loc3_ + "emergencyhandling" + ".text.titlebox3")];
                                                      if(_loc6_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr07c4);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr0677);
                                                }
                                                §§goto(addr0e31);
                                             }
                                             else
                                             {
                                                addr046d:
                                                _loc2_.dynaMCName = "feature_improvementBooster";
                                                if(!(_loc6_ && Boolean(_loc3_)))
                                                {
                                                   addr0483:
                                                   _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.improvements.boosterPacks","rcl.featurescreens.improvements.boosterPacks.title");
                                                   if(_loc5_ || Boolean(_loc3_))
                                                   {
                                                      _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.improvements.boosterPacks","rcl.featurescreens.improvements.boosterPacks.flavour");
                                                      if(!(_loc6_ && Boolean(this)))
                                                      {
                                                         _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.improvements.boosterPacks","rcl.featurescreens.improvements.boosterPacks.text.textfield1")];
                                                         if(_loc5_ || Boolean(_loc3_))
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr05eb);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0a9b);
                                                   }
                                                   §§goto(addr0e31);
                                                }
                                                else
                                                {
                                                   §§goto(addr05cd);
                                                }
                                             }
                                             §§goto(addr07c4);
                                          }
                                          §§goto(addr021f);
                                       }
                                       §§goto(addr020c);
                                    }
                                    §§goto(addr0483);
                                 }
                                 §§goto(addr01d5);
                              }
                              §§goto(addr01c2);
                           }
                           else
                           {
                              addr097f:
                              _loc2_.dynaMCName = "feature_pf2_coastal_building";
                              if(_loc5_)
                              {
                                 §§goto(addr098d);
                              }
                           }
                        }
                        §§goto(addr09c9);
                     case 2:
                        _loc2_.layerStyleName = "infrastructureFeatureScreen";
                        if(_loc5_)
                        {
                           _loc2_.dynaLibName = "gui_popup_infrastructurequestscreens";
                           if(!(_loc6_ && Boolean(this)))
                           {
                              §§push(_loc2_);
                              §§push(LocaUtils);
                              §§push(_loc3_ + "securitygrades");
                              if(_loc5_)
                              {
                                 §§push("");
                                 if(!_loc6_)
                                 {
                                    addr035d:
                                    §§push(§§pop() + §§pop());
                                    §§push(_loc3_ + "securitygrades");
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       §§push(§§pop() + ".title");
                                    }
                                 }
                                 §§pop().popuptitle = §§pop().getString(§§pop(),§§pop());
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    §§push(_loc2_);
                                    §§push(LocaUtils);
                                    §§push(_loc3_ + "securitygrades");
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                       §§push("");
                                       if(!_loc6_)
                                       {
                                          addr03a7:
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc3_ + "securitygrades");
                                          if(!(_loc6_ && Boolean(param1)))
                                          {
                                             addr03ba:
                                             §§push(§§pop() + ".flavour");
                                          }
                                          §§pop().popupflavour = §§pop().getString(§§pop(),§§pop());
                                          if(_loc5_ || Boolean(_loc3_))
                                          {
                                             §§goto(addr03d2);
                                          }
                                          else
                                          {
                                             addr0877:
                                             _loc2_.popupflavour = LocaUtils.getString("rcl.featurescreens.productionPoints.new","rcl.featurescreens.productionPoints.new.flavour");
                                             if(_loc5_)
                                             {
                                                _loc2_.texts = new <String>[LocaUtils.getString("rcl.featurescreens.productionPoints.new","rcl.featurescreens.productionPoints.new.text.textfield1"),LocaUtils.getString("rcl.featurescreens.productionPoints.new","rcl.featurescreens.productionPoints.new.text.textfield2")];
                                                if(!(_loc5_ || Boolean(_loc3_)))
                                                {
                                                   §§goto(addr0a9b);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr097f);
                                             }
                                             §§goto(addr0e31);
                                          }
                                       }
                                       §§goto(addr03ba);
                                    }
                                    §§goto(addr03a7);
                                 }
                                 else
                                 {
                                    §§goto(addr05eb);
                                 }
                              }
                              §§goto(addr035d);
                           }
                           else
                           {
                              §§goto(addr0800);
                           }
                        }
                        §§goto(addr0877);
                     case 3:
                        _loc2_.dynaLibName = "gui_popup_improvementFeatureScreens";
                        if(!_loc6_)
                        {
                           §§goto(addr046d);
                        }
                        else
                        {
                           §§goto(addr0599);
                        }
                     case 4:
                        _loc2_.dynaLibName = "gui_popup_improvementFeatureScreens";
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           _loc2_.dynaMCName = "feature_improvementCursorMode";
                           if(_loc6_)
                           {
                              break;
                           }
                           §§goto(addr0518);
                        }
                        else
                        {
                           §§goto(addr05af);
                        }
                        §§goto(addr0e31);
                     case 5:
                        _loc2_.dynaLibName = "gui_popup_improvementFeatureScreens";
                        if(_loc5_ || Boolean(this))
                        {
                           §§goto(addr0599);
                        }
                        §§goto(addr0e31);
                     case 6:
                        _loc2_.dynaLibName = "gui_popup_improvementFeatureScreens";
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           _loc2_.dynaMCName = "feature_improvementManagement";
                           if(_loc5_)
                           {
                              §§goto(addr072d);
                           }
                           §§goto(addr0743);
                        }
                        §§goto(addr0add);
                     case 7:
                        _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
                        if(!_loc6_)
                        {
                           §§goto(addr07ae);
                        }
                        else
                        {
                           §§goto(addr0934);
                        }
                     case 8:
                        _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
                        if(!_loc6_)
                        {
                           _loc2_.dynaMCName = "feature_productionPoints";
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.productionPoints.new","rcl.featurescreens.productionPoints.new.title.capital");
                              if(_loc5_ || Boolean(param1))
                              {
                                 §§goto(addr0877);
                              }
                              §§goto(addr0e31);
                           }
                           else
                           {
                              §§goto(addr0a58);
                           }
                        }
                        else
                        {
                           §§goto(addr0934);
                        }
                        §§goto(addr0e31);
                     case 9:
                        _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
                        if(_loc6_ && Boolean(this))
                        {
                           break;
                        }
                        _loc2_.dynaMCName = "feature_pf2_bridge";
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.secondPlayfield.new","rcl.featurescreens.secondPlayfield.new.title.capital");
                           if(!_loc6_)
                           {
                              §§goto(addr0916);
                           }
                           §§goto(addr0a9b);
                        }
                        §§goto(addr0e31);
                        break;
                     case 10:
                        _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
                        if(_loc5_ || Boolean(param1))
                        {
                           §§goto(addr097f);
                        }
                        §§goto(addr0e31);
                     case 11:
                        _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
                        if(_loc5_)
                        {
                           _loc2_.dynaMCName = "feature_sublevel";
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              _loc2_.popuptitle = LocaUtils.getString("rcl.featurescreens.sublevel","rcl.featurescreens.sublevel.title.capital");
                              if(!_loc6_)
                              {
                                 §§goto(addr0a42);
                              }
                              §§goto(addr0aa9);
                           }
                           §§goto(addr0e31);
                        }
                        §§goto(addr0a58);
                     case 12:
                        _loc2_.dynaLibName = "gui_popup_bigFeatureScreens_misc";
                        if(_loc5_ || Boolean(this))
                        {
                           §§goto(addr0a9b);
                        }
                        §§goto(addr0abf);
                     default:
                        §§goto(addr0e31);
                  }
                  return;
               }
               §§goto(addr0be3);
            }
            §§goto(addr0d27);
         }
         §§goto(addr0c61);
      }
      
      private function fillFeatureCharacterDic(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:FeatureCharacterScreenVo = null;
         var _loc3_:* = param1;
         if(_loc5_ || Boolean(_loc2_))
         {
            §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr07c6:
                        §§push(4);
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_EDUCATION);
                     if(_loc5_ || Boolean(param1))
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 addr0723:
                                 §§push(1);
                                 if(_loc4_ && Boolean(_loc3_))
                                 {
                                 }
                              }
                              else
                              {
                                 addr07e8:
                                 §§push(5);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                 }
                              }
                              §§goto(addr0808);
                           }
                           else
                           {
                              §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN_FRIENDS);
                              if(!_loc4_)
                              {
                                 addr0743:
                                 §§push(_loc3_);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr074a);
                                 }
                                 §§goto(addr077b);
                              }
                              §§goto(addr07b5);
                           }
                        }
                        addr074a:
                        if(§§pop() === §§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push(2);
                              if(_loc5_)
                              {
                              }
                           }
                           else
                           {
                              §§goto(addr07c6);
                           }
                        }
                        else
                        {
                           §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICE);
                           if(_loc5_)
                           {
                              §§push(_loc3_);
                              if(!(_loc4_ && Boolean(_loc3_)))
                              {
                                 addr077b:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       §§push(3);
                                       if(_loc5_ || Boolean(_loc2_))
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr07e8);
                                    }
                                 }
                                 else
                                 {
                                    §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICECHIEF);
                                    if(_loc5_ || Boolean(this))
                                    {
                                       addr07b5:
                                       §§push(_loc3_);
                                       if(!_loc4_)
                                       {
                                          addr07bc:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr07c6);
                                             }
                                             else
                                             {
                                                §§goto(addr07e8);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr07e4);
                                          }
                                          §§goto(addr07e8);
                                       }
                                       addr07e4:
                                       §§goto(addr07e3);
                                    }
                                    addr07e3:
                                    if(QuestGFXIDLayerConstants.CHARACTER_SARIKA_INTRODUCTION === _loc3_)
                                    {
                                       §§goto(addr07e8);
                                    }
                                    else
                                    {
                                       §§push(6);
                                    }
                                 }
                                 §§goto(addr0808);
                              }
                              §§goto(addr07bc);
                           }
                           §§goto(addr07b5);
                        }
                        §§goto(addr0808);
                     }
                     §§goto(addr0743);
                  }
                  addr0808:
                  switch(§§pop())
                  {
                     case 0:
                        _loc2_ = new FeatureCharacterScreenVo();
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           _loc2_.layerStyleName = "infrastructurekaidenintro";
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              _loc2_.title = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.title");
                              if(_loc5_)
                              {
                                 _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.flavour");
                                 if(_loc5_)
                                 {
                                    _loc2_.buttonLabel = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.button");
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       _loc2_.buttonTooltip = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.button.tooltip");
                                       if(_loc5_ || Boolean(this))
                                       {
                                          _loc2_.characterName = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.charName");
                                          if(_loc5_)
                                          {
                                             addr00cc:
                                             _loc2_.mainLayerText = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenintro","rcl.miniLayer.infrastructurekaidenintro.maintext");
                                             if(!(_loc4_ && Boolean(param1)))
                                             {
                                                addr00ea:
                                                _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_kaiden");
                                                if(!_loc4_)
                                                {
                                                   addr0100:
                                                   _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_gradeshot");
                                                   if(_loc5_)
                                                   {
                                                      addr0116:
                                                      _loc2_.smallGfxLeft = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_firedept");
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      addr012c:
                                                      _loc2_.smallGfxRight = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_catshot");
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                }
                                                addr0824:
                                                this._featureCharacterScreenVoDic[param1] = _loc2_;
                                                break;
                                             }
                                             §§goto(addr0116);
                                          }
                                          §§goto(addr00ea);
                                       }
                                       §§goto(addr0116);
                                    }
                                    §§goto(addr012c);
                                 }
                                 §§goto(addr00cc);
                              }
                              §§goto(addr00ea);
                           }
                           §§goto(addr00cc);
                        }
                        §§goto(addr0100);
                     case 1:
                        _loc2_ = new FeatureCharacterScreenVo();
                        if(_loc5_)
                        {
                           _loc2_.layerStyleName = "infrastructureeducationintro";
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              _loc2_.title = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.title");
                              if(_loc5_ || Boolean(_loc2_))
                              {
                                 addr018b:
                                 _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.flavour");
                                 if(_loc5_)
                                 {
                                    _loc2_.buttonLabel = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.button");
                                    if(_loc5_)
                                    {
                                       _loc2_.buttonTooltip = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.button.tooltip");
                                       if(_loc5_ || Boolean(this))
                                       {
                                          _loc2_.characterName = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.charName");
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             _loc2_.mainLayerText = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.maintext");
                                             if(!_loc4_)
                                             {
                                                addr0209:
                                                _loc2_.mainLayerTextHeader = LocaUtils.getString("rcl.miniLayer.infrastructureeducationintro","rcl.miniLayer.infrastructureeducationintro.maintextHeader");
                                                if(!(_loc4_ && Boolean(_loc2_)))
                                                {
                                                   addr0227:
                                                   _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_teacher");
                                                   if(_loc5_)
                                                   {
                                                      addr023d:
                                                      _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_academy");
                                                   }
                                                }
                                                §§goto(addr0824);
                                             }
                                             §§goto(addr023d);
                                          }
                                          §§goto(addr0209);
                                       }
                                       §§goto(addr023d);
                                    }
                                    §§goto(addr0209);
                                 }
                                 §§goto(addr0824);
                              }
                              §§goto(addr023d);
                           }
                           §§goto(addr018b);
                        }
                        §§goto(addr0227);
                     case 2:
                        _loc2_ = new FeatureCharacterScreenVo();
                        if(!(_loc4_ && Boolean(this)))
                        {
                           _loc2_.layerStyleName = "infrastructurekaidenintro";
                           if(!_loc4_)
                           {
                              _loc2_.title = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.title");
                              if(_loc5_)
                              {
                                 _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.flavour");
                                 if(!(_loc4_ && Boolean(_loc3_)))
                                 {
                                    _loc2_.buttonLabel = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.button");
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       _loc2_.buttonTooltip = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.button.tooltip");
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          addr02e8:
                                          _loc2_.characterName = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.charName");
                                          if(_loc5_ || Boolean(_loc3_))
                                          {
                                             addr0306:
                                             _loc2_.mainLayerText = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.maintext");
                                             if(_loc5_)
                                             {
                                                addr031c:
                                                _loc2_.mainLayerTextHeader = LocaUtils.getString("rcl.miniLayer.infrastructurekaidenandcointro","rcl.miniLayer.infrastructurekaidenandcointro.maintextHeader");
                                                if(_loc5_)
                                                {
                                                   addr0332:
                                                   _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_kaiden");
                                                   if(!_loc4_)
                                                   {
                                                      _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_kaidenandco");
                                                   }
                                                }
                                                §§goto(addr0824);
                                             }
                                             §§goto(addr0332);
                                          }
                                          §§goto(addr031c);
                                       }
                                       §§goto(addr0332);
                                    }
                                    §§goto(addr031c);
                                 }
                                 §§goto(addr02e8);
                              }
                              §§goto(addr0306);
                           }
                        }
                        §§goto(addr031c);
                     case 3:
                        _loc2_ = new FeatureCharacterScreenVo();
                        if(!_loc4_)
                        {
                           _loc2_.layerStyleName = "infrastructurekaidenintro";
                           if(!_loc4_)
                           {
                              _loc2_.title = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.title");
                              if(_loc5_ || Boolean(this))
                              {
                                 _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.flavour");
                                 if(_loc5_)
                                 {
                                    _loc2_.buttonLabel = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.button");
                                    if(_loc5_)
                                    {
                                       addr03c5:
                                       _loc2_.buttonTooltip = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.button.tooltip");
                                       if(!(_loc4_ && Boolean(_loc3_)))
                                       {
                                          addr03e3:
                                          _loc2_.characterName = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.charName");
                                          if(_loc5_)
                                          {
                                             _loc2_.mainLayerText = LocaUtils.getString("rcl.miniLayer.infrastructurepoliceintro","rcl.miniLayer.infrastructurepoliceintro.maintext");
                                             if(!(_loc4_ && Boolean(_loc3_)))
                                             {
                                                _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_sarika_crime");
                                                if(_loc5_ || Boolean(_loc3_))
                                                {
                                                   addr0441:
                                                   _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_cctv");
                                                   if(_loc5_)
                                                   {
                                                      addr0457:
                                                      _loc2_.smallGfxLeft = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_policedept");
                                                      if(_loc5_ || Boolean(_loc3_))
                                                      {
                                                         addr0475:
                                                         _loc2_.smallGfxRight = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_catshot");
                                                      }
                                                      §§goto(addr0824);
                                                   }
                                                   §§goto(addr0475);
                                                }
                                                §§goto(addr0457);
                                             }
                                             §§goto(addr0824);
                                          }
                                          §§goto(addr0441);
                                       }
                                       §§goto(addr0457);
                                    }
                                    §§goto(addr0475);
                                 }
                              }
                              §§goto(addr03c5);
                           }
                           §§goto(addr03e3);
                        }
                        §§goto(addr0475);
                     case 4:
                        _loc2_ = new FeatureCharacterScreenVo();
                        if(!(_loc4_ && Boolean(this)))
                        {
                           _loc2_.layerStyleName = "infrastructurekaidenintro";
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              _loc2_.title = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.title");
                              if(!_loc4_)
                              {
                                 _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.flavour");
                                 if(_loc5_)
                                 {
                                    _loc2_.buttonLabel = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.button");
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       addr0501:
                                       _loc2_.buttonTooltip = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.button.tooltip");
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          addr051f:
                                          _loc2_.characterName = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.charName");
                                          if(!_loc4_)
                                          {
                                             addr0535:
                                             _loc2_.mainLayerText = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.maintext");
                                             if(!_loc4_)
                                             {
                                                _loc2_.mainLayerTextHeader = LocaUtils.getString("rcl.miniLayer.infrastructurepolicechiefintro","rcl.miniLayer.infrastructurepolicechiefintro.maintextHeader");
                                                if(!_loc4_)
                                                {
                                                   addr0561:
                                                   _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_chief");
                                                   if(_loc5_ || Boolean(_loc3_))
                                                   {
                                                      addr057f:
                                                      _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_chiefandco");
                                                   }
                                                }
                                                §§goto(addr0824);
                                             }
                                             §§goto(addr057f);
                                          }
                                          §§goto(addr0824);
                                       }
                                       §§goto(addr057f);
                                    }
                                    §§goto(addr0561);
                                 }
                                 §§goto(addr051f);
                              }
                              §§goto(addr0501);
                           }
                           §§goto(addr0535);
                        }
                        §§goto(addr057f);
                     case 5:
                        _loc2_ = new FeatureCharacterScreenVo();
                        if(_loc5_ || Boolean(this))
                        {
                           _loc2_.layerStyleName = "infrastructurekaidenintro";
                           if(_loc5_)
                           {
                              _loc2_.title = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.title.capital");
                              if(_loc5_ || Boolean(_loc2_))
                              {
                                 _loc2_.flavourText = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.bubbleText");
                                 if(!_loc4_)
                                 {
                                    addr05ee:
                                    _loc2_.buttonLabel = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.button");
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       _loc2_.buttonTooltip = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.button.tooltip");
                                       if(!_loc4_)
                                       {
                                          _loc2_.characterName = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.characterName");
                                          if(!_loc4_)
                                          {
                                             addr0638:
                                             _loc2_.mainLayerText = LocaUtils.getString("rcl.featurescreens.character.sarika","rcl.featurescreens.character.sarika.mainText");
                                             if(!_loc4_)
                                             {
                                                _loc2_.characterGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_sarika_needs");
                                                if(_loc5_)
                                                {
                                                   addr0664:
                                                   _loc2_.mainGfx = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_needProtest");
                                                   if(!(_loc4_ && Boolean(param1)))
                                                   {
                                                      addr0682:
                                                      _loc2_.smallGfxLeft = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_noNeedShot");
                                                      if(_loc5_)
                                                      {
                                                         addr0698:
                                                         _loc2_.smallGfxRight = new BriskDynaVo("gui_popup_infrastructurequestscreens","iquest_needShot");
                                                      }
                                                      addr06a8:
                                                      §§goto(addr0824);
                                                   }
                                                }
                                                §§goto(addr0698);
                                             }
                                             §§goto(addr0682);
                                          }
                                       }
                                       §§goto(addr0698);
                                    }
                                    §§goto(addr0638);
                                 }
                                 §§goto(addr06a8);
                              }
                              §§goto(addr05ee);
                           }
                           §§goto(addr0664);
                        }
                        §§goto(addr0638);
                     default:
                        §§goto(addr06a8);
                  }
                  return;
               }
               §§goto(addr077b);
            }
            §§goto(addr0743);
         }
         §§goto(addr0723);
      }
      
      private function fillFeatureScreenVoDic(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc2_:Object = null;
         var _loc3_:Vector.<FeatureScreenStepDataVo> = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = param1;
         if(_loc12_ || Boolean(this))
         {
            §§push(FEATURE_NEEDS);
            if(_loc12_)
            {
               §§push(_loc10_);
               if(_loc12_ || Boolean(_loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc11_)
                     {
                        §§push(0);
                        if(_loc11_ && Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        addr07c2:
                        §§push(1);
                        if(_loc11_ && Boolean(_loc3_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(FEATURE_PERMISSIONS);
                     if(_loc12_)
                     {
                        addr07a8:
                        §§push(_loc10_);
                        if(_loc12_ || Boolean(this))
                        {
                           addr07b8:
                           if(§§pop() === §§pop())
                           {
                              if(_loc12_)
                              {
                                 §§goto(addr07c2);
                              }
                              else
                              {
                                 addr07eb:
                                 §§push(2);
                                 if(_loc12_)
                                 {
                                 }
                              }
                              §§goto(addr0803);
                           }
                           else
                           {
                              §§goto(addr07e7);
                           }
                        }
                        addr07e7:
                        §§goto(addr07e5);
                     }
                     addr07e5:
                     if(FEATURE_BALANCE === _loc10_)
                     {
                        §§goto(addr07eb);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr0803);
                  }
                  addr0803:
                  loop31:
                  switch(§§pop())
                  {
                     case 0:
                        _loc2_ = new Object();
                        if(_loc12_)
                        {
                           _loc2_.title = ResourceManager.getInstance().getString(String("rcl.featurescreens.needs"),String("rcl.featurescreens.needs.title"));
                           if(_loc12_ || Boolean(_loc2_))
                           {
                              addr0078:
                              _loc2_.flavour = ResourceManager.getInstance().getString(String("rcl.featurescreens.needs"),String("rcl.featurescreens.needs.flavorText.new"));
                              if(_loc12_ || Boolean(this))
                              {
                                 addr00a6:
                                 _loc2_.stepAmount = 6;
                              }
                              _loc3_ = new Vector.<FeatureScreenStepDataVo>();
                              if(_loc12_ || Boolean(this))
                              {
                                 §§push(1);
                                 if(!_loc11_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc11_ && Boolean(param1)))
                                    {
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          addr02d7:
                                          loop1:
                                          while(true)
                                          {
                                             if(§§pop() > _loc2_.stepAmount)
                                             {
                                                if(!_loc11_)
                                                {
                                                   addr02e5:
                                                   _loc2_.steps = _loc3_;
                                                   if(_loc12_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push("rcl.featurescreens.needs.title.step");
                                                if(_loc12_ || Boolean(_loc3_))
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc11_ && Boolean(_loc3_)))
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc11_ && Boolean(_loc3_)))
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(_loc12_ || Boolean(_loc2_))
                                                            {
                                                               §§push(ResourceManager.getInstance());
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(§§pop().getString(String("rcl.featurescreens.needs"),String(_loc5_)));
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc11_)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(_loc12_ || Boolean(this))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push("rcl.featurescreens.needs.text.step");
                                                                              if(!(_loc11_ && Boolean(_loc2_)))
                                                                              {
                                                                                 loop3:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc11_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc11_ && Boolean(param1)))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(ResourceManager.getInstance());
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop().getString(String("rcl.featurescreens.needs"),String(_loc7_)));
                                                                                                      if(_loc12_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc8_ = §§pop();
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push("need_step");
                                                                                                                  if(!(_loc11_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        addr01f9:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr01f7:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc9_ = §§pop();
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              §§push(3);
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc12_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(ResourceManager.getInstance());
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().getString(String("rcl.featurescreens.needs"),String("rcl.featurescreens.needs.text.step3.new")));
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   if(_loc12_ || Boolean(_loc3_))
                                                                                                                                                   {
                                                                                                                                                      loop8:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc3_.push(new FeatureScreenStepDataVo("gui_popups_features_steps",_loc9_,_loc6_,_loc8_));
                                                                                                                                                         if(!_loc12_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc4_++;
                                                                                                                                                            if(_loc11_)
                                                                                                                                                            {
                                                                                                                                                               break loop8;
                                                                                                                                                            }
                                                                                                                                                            break loop1;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr02b3:
                                                                                                                                                   }
                                                                                                                                                   addr0816:
                                                                                                                                                   this._featureScreenVoDic[param1] = new FeatureScreenVo(_loc2_);
                                                                                                                                                   break loop31;
                                                                                                                                                }
                                                                                                                                                addr0251:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   addr02ab:
                                                                                                                                                   do
                                                                                                                                                   {
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                   }
                                                                                                                                                   while(!_loc11_);
                                                                                                                                                   
                                                                                                                                                   break loop3;
                                                                                                                                                }
                                                                                                                                                addr02aa:
                                                                                                                                             }
                                                                                                                                             §§goto(addr02b3);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02aa);
                                                                                                                                       }
                                                                                                                                       addr022f:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr0287:
                                                                                                                                       §§push(§§pop().getString(String("rcl.featurescreens.needs"),String("rcl.featurescreens.needs.text.step4.new")));
                                                                                                                                       if(_loc12_ || Boolean(param1))
                                                                                                                                       {
                                                                                                                                          §§goto(addr02aa);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr02ab);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    addr026f:
                                                                                                                                    addr026d:
                                                                                                                                    if(§§pop() == 4)
                                                                                                                                    {
                                                                                                                                       if(_loc11_ && Boolean(_loc2_))
                                                                                                                                       {
                                                                                                                                          break loop31;
                                                                                                                                       }
                                                                                                                                       §§goto(addr0287);
                                                                                                                                       §§push(ResourceManager.getInstance());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr02b3);
                                                                                                                              }
                                                                                                                              §§goto(addr026f);
                                                                                                                           }
                                                                                                                           §§goto(addr026d);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        addr0201:
                                                                                                                     }
                                                                                                                     §§goto(addr02aa);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               break loop1;
                                                                                                            }
                                                                                                            §§goto(addr02e5);
                                                                                                            addr01dd:
                                                                                                         }
                                                                                                         §§goto(addr0251);
                                                                                                      }
                                                                                                      §§goto(addr02ab);
                                                                                                   }
                                                                                                   §§goto(addr022f);
                                                                                                }
                                                                                                §§goto(addr02cd);
                                                                                             }
                                                                                             addr01a1:
                                                                                          }
                                                                                          §§goto(addr02ab);
                                                                                       }
                                                                                       §§goto(addr01f7);
                                                                                    }
                                                                                    §§goto(addr01f9);
                                                                                 }
                                                                                 break;
                                                                                 addr017b:
                                                                              }
                                                                              §§goto(addr01f7);
                                                                           }
                                                                           break;
                                                                           addr0169:
                                                                        }
                                                                        §§goto(addr02b3);
                                                                     }
                                                                     §§goto(addr01dd);
                                                                  }
                                                                  §§goto(addr01a1);
                                                               }
                                                               §§goto(addr022f);
                                                            }
                                                            §§goto(addr02e5);
                                                         }
                                                         §§goto(addr0201);
                                                      }
                                                      §§goto(addr017b);
                                                   }
                                                   §§goto(addr01f9);
                                                }
                                                §§goto(addr017b);
                                             }
                                             §§goto(addr0816);
                                          }
                                       }
                                    }
                                    _loc2_.feature = FEATURE_NEEDS;
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    §§goto(addr0816);
                                 }
                                 §§goto(addr02d7);
                              }
                              §§goto(addr0169);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr0078);
                     case 1:
                        _loc2_ = new Object();
                        if(!(_loc11_ && Boolean(param1)))
                        {
                           _loc2_.title = ResourceManager.getInstance().getString(String("rcl.featurescreens.permissions"),String("rcl.featurescreens.permissions.title"));
                           if(!(_loc11_ && Boolean(_loc2_)))
                           {
                              _loc2_.flavour = ResourceManager.getInstance().getString(String("rcl.featurescreens.permissions"),String("rcl.featurescreens.permissions.flavorText"));
                              if(!_loc11_)
                              {
                                 addr036c:
                                 _loc2_.stepAmount = 5;
                              }
                              addr0372:
                              _loc3_ = new Vector.<FeatureScreenStepDataVo>();
                              if(_loc12_)
                              {
                                 §§push(1);
                                 if(!(_loc11_ && Boolean(_loc3_)))
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc11_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          addr04fb:
                                          loop26:
                                          while(true)
                                          {
                                             if(§§pop() > _loc2_.stepAmount)
                                             {
                                                if(!(_loc11_ && Boolean(_loc2_)))
                                                {
                                                   addr0511:
                                                   _loc2_.steps = _loc3_;
                                                   if(!(_loc11_ && Boolean(this)))
                                                   {
                                                      _loc2_.feature = FEATURE_PERMISSIONS;
                                                   }
                                                }
                                                §§goto(addr0816);
                                             }
                                             else
                                             {
                                                §§push("rcl.featurescreens.permissions.title.step");
                                                if(_loc12_ || Boolean(param1))
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc12_ || Boolean(_loc2_))
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc11_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(_loc12_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(ResourceManager.getInstance());
                                                                  if(!(_loc11_ && Boolean(this)))
                                                                  {
                                                                     §§push(§§pop().getString(String("rcl.featurescreens.permissions"),String(_loc5_)));
                                                                     if(!(_loc11_ && Boolean(_loc2_)))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc12_)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              if(_loc12_ || Boolean(_loc2_))
                                                                              {
                                                                                 §§push("rcl.featurescreens.permissions.text.step");
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc11_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc12_ || Boolean(param1))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(_loc12_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      §§push(ResourceManager.getInstance());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().getString(String("rcl.featurescreens.permissions"),String(_loc7_)));
                                                                                                         if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc12_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     break loop26;
                                                                                                                  }
                                                                                                                  §§push("permissions_step");
                                                                                                                  if(_loc12_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        addr04c5:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr0511);
                                                                                                                     }
                                                                                                                     addr04c3:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                  }
                                                                                                                  §§goto(addr0511);
                                                                                                               }
                                                                                                            }
                                                                                                            addr049a:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc9_ = §§pop();
                                                                                                            if(_loc11_ && Boolean(this))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            _loc3_.push(new FeatureScreenStepDataVo("gui_popups_features_steps",_loc9_,_loc6_,_loc8_));
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               break loop26;
                                                                                                            }
                                                                                                            _loc4_++;
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               break loop26;
                                                                                                            }
                                                                                                            §§goto(addr0525);
                                                                                                         }
                                                                                                      }
                                                                                                      addr0479:
                                                                                                   }
                                                                                                   §§goto(addr0511);
                                                                                                }
                                                                                                addr0463:
                                                                                             }
                                                                                             §§goto(addr049a);
                                                                                          }
                                                                                          §§goto(addr04c3);
                                                                                       }
                                                                                       addr0445:
                                                                                    }
                                                                                    §§goto(addr04c5);
                                                                                 }
                                                                                 §§goto(addr04c3);
                                                                              }
                                                                              §§goto(addr0816);
                                                                           }
                                                                           §§goto(addr049a);
                                                                        }
                                                                        addr041c:
                                                                     }
                                                                     §§goto(addr0463);
                                                                  }
                                                                  §§goto(addr0479);
                                                               }
                                                               addr03db:
                                                            }
                                                            §§goto(addr0525);
                                                         }
                                                         §§goto(addr041c);
                                                      }
                                                      §§goto(addr04c6);
                                                   }
                                                   §§goto(addr0445);
                                                }
                                                §§goto(addr03cc);
                                             }
                                          }
                                       }
                                       addr04f9:
                                    }
                                    §§goto(addr03db);
                                 }
                                 §§goto(addr04fb);
                              }
                              §§goto(addr04f9);
                           }
                           §§goto(addr036c);
                        }
                        §§goto(addr0372);
                     case 2:
                        _loc2_ = new Object();
                        if(_loc12_ || Boolean(_loc3_))
                        {
                           _loc2_.title = ResourceManager.getInstance().getString(String("rcl.featurescreens.balance"),String("rcl.featurescreens.balance.title"));
                           if(_loc12_)
                           {
                              _loc2_.flavour = ResourceManager.getInstance().getString(String("rcl.featurescreens.balance"),String("rcl.featurescreens.balance.flavorText"));
                              if(_loc12_ || Boolean(_loc2_))
                              {
                                 addr059a:
                                 _loc2_.stepAmount = 6;
                              }
                              addr05a0:
                              _loc3_ = new Vector.<FeatureScreenStepDataVo>();
                              if(_loc12_ || Boolean(param1))
                              {
                                 §§push(1);
                                 if(!_loc11_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc11_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          addr071d:
                                          loop30:
                                          while(true)
                                          {
                                             if(§§pop() > _loc2_.stepAmount)
                                             {
                                                if(_loc12_ || Boolean(_loc2_))
                                                {
                                                   addr0733:
                                                   _loc2_.steps = _loc3_;
                                                   if(!(_loc11_ && Boolean(param1)))
                                                   {
                                                      addr0747:
                                                      _loc2_.feature = FEATURE_BALANCE;
                                                   }
                                                   §§goto(addr0816);
                                                }
                                                §§goto(addr0747);
                                             }
                                             else
                                             {
                                                §§push("rcl.featurescreens.balance.title.step");
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc4_);
                                                   if(!(_loc11_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc11_ && Boolean(param1)))
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!_loc11_)
                                                            {
                                                               §§push(ResourceManager.getInstance());
                                                               if(_loc12_)
                                                               {
                                                                  §§push(§§pop().getString(String("rcl.featurescreens.balance"),String(_loc5_)));
                                                                  if(_loc12_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc11_ && Boolean(param1)))
                                                                     {
                                                                        addr0645:
                                                                        _loc6_ = §§pop();
                                                                        if(_loc12_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push("rcl.featurescreens.balance.text.step");
                                                                           if(_loc12_ || Boolean(this))
                                                                           {
                                                                              addr0667:
                                                                              §§push(_loc4_);
                                                                              if(_loc12_ || Boolean(this))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr0693:
                                                                                       §§push(ResourceManager.getInstance().getString(String("rcl.featurescreens.balance"),String(_loc7_)));
                                                                                       if(_loc12_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr06b4:
                                                                                          §§push(§§pop());
                                                                                          if(_loc12_ || Boolean(param1))
                                                                                          {
                                                                                             addr06c3:
                                                                                             _loc8_ = §§pop();
                                                                                             if(_loc12_ || Boolean(_loc3_))
                                                                                             {
                                                                                                addr06e1:
                                                                                                addr06e0:
                                                                                                §§push("balance_step");
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   addr06df:
                                                                                                   addr06dd:
                                                                                                   §§push(§§pop() + _loc4_);
                                                                                                }
                                                                                                _loc9_ = §§pop();
                                                                                                if(_loc12_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   addr06f1:
                                                                                                   _loc3_.push(new FeatureScreenStepDataVo("gui_popups_features_steps",_loc9_,_loc6_,_loc8_));
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_++;
                                                                                                         if(!(_loc11_ && Boolean(param1)))
                                                                                                         {
                                                                                                            break loop30;
                                                                                                         }
                                                                                                      }
                                                                                                      addr070b:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr0733);
                                                                                                   }
                                                                                                   §§goto(addr0816);
                                                                                                }
                                                                                                §§goto(addr070b);
                                                                                             }
                                                                                             §§goto(addr06f1);
                                                                                          }
                                                                                          §§goto(addr06e1);
                                                                                       }
                                                                                       §§goto(addr06c3);
                                                                                    }
                                                                                    §§goto(addr06e1);
                                                                                 }
                                                                                 §§goto(addr06e0);
                                                                              }
                                                                              §§goto(addr06df);
                                                                           }
                                                                           §§goto(addr06dd);
                                                                        }
                                                                        §§goto(addr0733);
                                                                     }
                                                                     §§goto(addr06e1);
                                                                  }
                                                                  §§goto(addr0645);
                                                               }
                                                               §§goto(addr0693);
                                                            }
                                                            §§goto(addr070b);
                                                         }
                                                         §§goto(addr06b4);
                                                      }
                                                      §§goto(addr0667);
                                                   }
                                                   §§goto(addr06df);
                                                }
                                                §§goto(addr06dd);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr070b);
                                 }
                                 §§goto(addr071d);
                              }
                              §§goto(addr0747);
                           }
                           §§goto(addr059a);
                        }
                        §§goto(addr05a0);
                     default:
                        §§goto(addr0816);
                  }
                  return;
               }
               §§goto(addr07b8);
            }
            §§goto(addr07a8);
         }
         §§goto(addr07eb);
      }
   }
}

