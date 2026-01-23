package net.bigpoint.cityrama.model.mastery
{
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryBonusDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryBonusGroupDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class BuildingMasteryProxy extends Proxy
   {
      
      public static const NAME:String = "BuildingMasteryProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "BuildingMasteryProxy";
      }
      
      private var _config:ConfigDTO;
      
      private var _featureProxy:FeatureProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      public function BuildingMasteryProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function getCompletePercentValueForTag(param1:BillboardObjectVo, param2:String, param3:String = "") : Number
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc6_:Vector.<ConfigOutputDTO> = null;
         var _loc7_:* = false;
         var _loc8_:ConfigMasteryBonusGroupDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:* = false;
         var _loc11_:ConfigOutputDTO = null;
         if(!_loc16_)
         {
            §§push(param1.buildingDTO);
            if(!(_loc16_ && Boolean(param2)))
            {
               §§push(§§pop() == null);
               if(_loc17_ || Boolean(param2))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(!_temp_4)
                  {
                     if(!(_loc16_ && BuildingMasteryProxy))
                     {
                        addr006f:
                        §§pop();
                        if(!(_loc16_ && Boolean(param2)))
                        {
                           addr0087:
                           addr0082:
                           addr007e:
                           if(param1.buildingDTO.currentMasteryBonus == null)
                           {
                              if(_loc17_ || Boolean(param3))
                              {
                                 §§push(0);
                                 if(!_loc16_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr00a2:
                                 §§push(0);
                              }
                              var _loc4_:* = §§pop();
                              var _loc5_:Number = param1.buildingDTO.currentMasteryBonus.highestUnlockedBonusGroup;
                              loop0:
                              for each(_loc8_ in param1.buildingDTO.currentMasteryBonus.config.buffs)
                              {
                                 if(_loc8_.groupId > _loc5_)
                                 {
                                    continue;
                                 }
                                 _loc6_ = new Vector.<ConfigOutputDTO>(0);
                                 if(_loc17_ || Boolean(param1))
                                 {
                                    §§push(false);
                                    if(!(_loc16_ && BuildingMasteryProxy))
                                    {
                                       _loc7_ = §§pop();
                                       if(!(_loc16_ && Boolean(param1)))
                                       {
                                          §§push(_loc8_.selectionId);
                                          if(_loc17_)
                                          {
                                             §§push(0);
                                             if(_loc17_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc16_)
                                                {
                                                   addr013b:
                                                   var _temp_12:* = §§pop();
                                                   §§push(_temp_12);
                                                   if(!_temp_12)
                                                   {
                                                      if(!(_loc16_ && Boolean(param1)))
                                                      {
                                                         §§pop();
                                                         if(!(_loc16_ && Boolean(param1)))
                                                         {
                                                            addr015d:
                                                            §§push(_loc8_.selectionId);
                                                            if(_loc17_)
                                                            {
                                                               addr0173:
                                                               §§push(§§pop() == param1.buildingDTO.currentMasteryBonus.selectedBonus);
                                                               if(_loc17_)
                                                               {
                                                                  addr017a:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc17_ || Boolean(param1))
                                                                        {
                                                                           addr0194:
                                                                           var _loc14_:* = §§pop();
                                                                           if(_loc17_ || BuildingMasteryProxy)
                                                                           {
                                                                              var _loc15_:* = _loc8_.configOutputs;
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc15_,_loc14_));
                                                                                 if(_loc16_ && BuildingMasteryProxy)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       if(!(_loc16_ && Boolean(param1)))
                                                                                       {
                                                                                          addr037a:
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             addr0382:
                                                                                             §§push(_loc7_);
                                                                                             if(!(_loc16_ && Boolean(param1)))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      addr039d:
                                                                                                      _loc10_ = false;
                                                                                                      addr039c:
                                                                                                   }
                                                                                                   addr03a1:
                                                                                                   _loc14_ = 0;
                                                                                                   addr03a3:
                                                                                                   _loc15_ = _loc6_;
                                                                                                   do
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc15_,_loc14_));
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   while(!§§pop());
                                                                                                   
                                                                                                   addr0694:
                                                                                                   addr068d:
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr039d);
                                                                                          }
                                                                                          §§goto(addr039c);
                                                                                       }
                                                                                       §§goto(addr03a3);
                                                                                    }
                                                                                    §§goto(addr0694);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc9_ = §§nextvalue(_loc14_,_loc15_);
                                                                                    §§push(_loc9_.tagConfig);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() == null);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          if(_loc17_ || Boolean(param3))
                                                                                          {
                                                                                             var _temp_22:* = §§pop();
                                                                                             §§push(_temp_22);
                                                                                             §§push(_temp_22);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc17_ || Boolean(param2))
                                                                                                      {
                                                                                                         addr0200:
                                                                                                         §§push(_loc9_.tagConfig.tagName);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§push(param2);
                                                                                                            if(!(_loc16_ && Boolean(param3)))
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(!(_loc16_ && Boolean(param3)))
                                                                                                               {
                                                                                                                  addr0227:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(true);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0274:
                                                                                                                        var _temp_26:* = §§pop();
                                                                                                                        §§push(_temp_26);
                                                                                                                        §§push(_temp_26);
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           addr027b:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc16_ && BuildingMasteryProxy))
                                                                                                                              {
                                                                                                                                 addr028d:
                                                                                                                                 §§pop();
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§push(_loc9_.resourceConfig);
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    addr029f:
                                                                                                                                    §§push(§§pop().type);
                                                                                                                                    if(!(_loc16_ && Boolean(param3)))
                                                                                                                                    {
                                                                                                                                       addr02af:
                                                                                                                                       §§push(param3);
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          addr02b6:
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             addr02bd:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   _loc6_.push(_loc9_);
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr02fe:
                                                                                                                                                      §§push(param3);
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         addr0308:
                                                                                                                                                         addr0305:
                                                                                                                                                         if(§§pop() == "")
                                                                                                                                                         {
                                                                                                                                                            if(_loc17_ || Boolean(param2))
                                                                                                                                                            {
                                                                                                                                                               addr031a:
                                                                                                                                                               _loc6_.push(_loc9_);
                                                                                                                                                               if(_loc17_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§push(param3);
                                                                                                                                                      }
                                                                                                                                                      addr0331:
                                                                                                                                                      if(§§pop() == ServerTagConstants.TIME)
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            _loc6_.push(_loc9_);
                                                                                                                                                            addr033b:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr031a);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr02dd:
                                                                                                                                                addr02de:
                                                                                                                                                §§push(_loc9_.resourceConfig == null);
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   addr02e5:
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      addr02ec:
                                                                                                                                                      var _temp_30:* = §§pop();
                                                                                                                                                      addr02ed:
                                                                                                                                                      §§push(_temp_30);
                                                                                                                                                      if(_temp_30)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            addr02f7:
                                                                                                                                                            §§pop();
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr02fe);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr033b);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0308);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr02f7);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr0308);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0331);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0305);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02dd);
                                                                                                                              }
                                                                                                                              §§goto(addr02f7);
                                                                                                                           }
                                                                                                                           §§goto(addr02bd);
                                                                                                                        }
                                                                                                                        §§goto(addr02ed);
                                                                                                                     }
                                                                                                                     §§goto(addr031a);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc9_.resourceConfig);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        §§push(null);
                                                                                                                        if(!(_loc16_ && BuildingMasteryProxy))
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(_loc17_ || BuildingMasteryProxy)
                                                                                                                              {
                                                                                                                                 §§goto(addr0274);
                                                                                                                              }
                                                                                                                              §§goto(addr02e5);
                                                                                                                           }
                                                                                                                           §§goto(addr02bd);
                                                                                                                        }
                                                                                                                        §§goto(addr02de);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr029f);
                                                                                                               }
                                                                                                               §§goto(addr028d);
                                                                                                            }
                                                                                                            §§goto(addr02b6);
                                                                                                         }
                                                                                                         §§goto(addr02af);
                                                                                                      }
                                                                                                      §§goto(addr02fe);
                                                                                                   }
                                                                                                   §§goto(addr02ec);
                                                                                                }
                                                                                                §§goto(addr0227);
                                                                                             }
                                                                                             §§goto(addr027b);
                                                                                          }
                                                                                          §§goto(addr02f7);
                                                                                       }
                                                                                       §§goto(addr02bd);
                                                                                    }
                                                                                    §§goto(addr0200);
                                                                                 }
                                                                              }
                                                                              while(§§pop())
                                                                              {
                                                                                 _loc11_ = §§nextvalue(_loc14_,_loc15_);
                                                                                 if(!(_loc16_ && Boolean(param1)))
                                                                                 {
                                                                                    §§push(param2);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY);
                                                                                       if(!(_loc16_ && Boolean(param3)))
                                                                                       {
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(_loc17_ || BuildingMasteryProxy)
                                                                                             {
                                                                                                §§push(_loc11_.resourceConfig);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   §§push(§§pop().type);
                                                                                                   if(_loc17_ || Boolean(param2))
                                                                                                   {
                                                                                                      addr040b:
                                                                                                      §§push(ServerResConst.RESOURCE_ENERGY_NEGATIVE);
                                                                                                      if(_loc17_ || Boolean(param3))
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc17_ || Boolean(param2))
                                                                                                         {
                                                                                                            var _temp_39:* = §§pop();
                                                                                                            §§push(_temp_39);
                                                                                                            §§push(_temp_39);
                                                                                                            if(_loc17_ || Boolean(param1))
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!(_loc16_ && Boolean(param3)))
                                                                                                                     {
                                                                                                                        §§push(_loc11_.resourceConfig);
                                                                                                                        if(!(_loc16_ && Boolean(param1)))
                                                                                                                        {
                                                                                                                           §§push(§§pop().type);
                                                                                                                           if(_loc17_ || Boolean(param2))
                                                                                                                           {
                                                                                                                              §§push(ServerResConst.RESOURCE_ENERGY_POSITIVE);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 addr0483:
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    addr048a:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc16_ && BuildingMasteryProxy)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       addr049c:
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       if(!(_loc16_ && Boolean(param1)))
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_.outputAmount);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc17_ || Boolean(param3))
                                                                                                                                             {
                                                                                                                                                addr04c6:
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc17_ || BuildingMasteryProxy)
                                                                                                                                                {
                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      §§push(true);
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                         if(!(_loc17_ || Boolean(param2)))
                                                                                                                                                         {
                                                                                                                                                            addr05bc:
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc11_.outputAmount);
                                                                                                                                                               if(_loc17_ || Boolean(param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc17_ || Boolean(param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(_loc17_ || Boolean(param3))
                                                                                                                                                                     {
                                                                                                                                                                        addr05f5:
                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           addr05fd:
                                                                                                                                                                           §§push(true);
                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              addr0604:
                                                                                                                                                                              _loc10_ = §§pop();
                                                                                                                                                                              if(!(_loc17_ || Boolean(param1)))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0645:
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0654:
                                                                                                                                                                                       addr0655:
                                                                                                                                                                                       §§push(param3 == "");
                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr066a:
                                                                                                                                                                                          var _temp_53:* = §§pop();
                                                                                                                                                                                          addr066b:
                                                                                                                                                                                          §§push(_temp_53);
                                                                                                                                                                                          if(_temp_53)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0675:
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr067c:
                                                                                                                                                                                                §§push(_loc10_);
                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr068d);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr067c);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0675);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0654);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0675);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr063d:
                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0645);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr05f5);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr062d:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!(_loc16_ && BuildingMasteryProxy))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr063d);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0654);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr057a:
                                                                                                                                                         §§pop();
                                                                                                                                                         if(_loc17_ || Boolean(param2))
                                                                                                                                                         {
                                                                                                                                                            addr0589:
                                                                                                                                                            addr058e:
                                                                                                                                                            §§push(_loc11_.resourceConfig.type);
                                                                                                                                                            if(_loc17_ || Boolean(param2))
                                                                                                                                                            {
                                                                                                                                                               addr05a3:
                                                                                                                                                               addr059e:
                                                                                                                                                               §§push(§§pop() == ServerResConst.RESOURCE_HAPPINESS_POSITIVE);
                                                                                                                                                               if(_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  addr05aa:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc17_ || Boolean(param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr05bc);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr05fd);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0654);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0604);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0655);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0645);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0654);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr05f5);
                                                                                                                                          }
                                                                                                                                          §§goto(addr062d);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04c6);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0654);
                                                                                                                                 }
                                                                                                                                 §§goto(addr066a);
                                                                                                                              }
                                                                                                                              §§goto(addr05a3);
                                                                                                                           }
                                                                                                                           §§goto(addr059e);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr0537:
                                                                                                                           §§push(§§pop().type);
                                                                                                                           if(_loc17_ || Boolean(param3))
                                                                                                                           {
                                                                                                                              addr0547:
                                                                                                                              §§push(ServerResConst.RESOURCE_HAPPINESS_NEGATIVE);
                                                                                                                              if(!(_loc16_ && Boolean(param2)))
                                                                                                                              {
                                                                                                                                 addr055a:
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(_loc17_ || Boolean(param2))
                                                                                                                                 {
                                                                                                                                    addr0569:
                                                                                                                                    var _temp_61:* = §§pop();
                                                                                                                                    §§push(_temp_61);
                                                                                                                                    §§push(_temp_61);
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr057a);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0604);
                                                                                                                                       }
                                                                                                                                       §§goto(addr05aa);
                                                                                                                                    }
                                                                                                                                    §§goto(addr066b);
                                                                                                                                 }
                                                                                                                                 §§goto(addr05aa);
                                                                                                                              }
                                                                                                                              §§goto(addr05a3);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0655);
                                                                                                                     }
                                                                                                                     §§goto(addr0589);
                                                                                                                  }
                                                                                                                  §§goto(addr0569);
                                                                                                               }
                                                                                                               §§goto(addr048a);
                                                                                                            }
                                                                                                            §§goto(addr066b);
                                                                                                         }
                                                                                                         §§goto(addr0675);
                                                                                                      }
                                                                                                      §§goto(addr0483);
                                                                                                   }
                                                                                                   §§goto(addr059e);
                                                                                                }
                                                                                                §§goto(addr0537);
                                                                                             }
                                                                                             §§goto(addr05bc);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(param2);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                §§push(ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY);
                                                                                                if(!(_loc16_ && BuildingMasteryProxy))
                                                                                                {
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      if(!(_loc16_ && Boolean(param3)))
                                                                                                      {
                                                                                                         §§push(_loc11_.resourceConfig);
                                                                                                         if(!(_loc16_ && BuildingMasteryProxy))
                                                                                                         {
                                                                                                            §§goto(addr0537);
                                                                                                         }
                                                                                                         §§goto(addr058e);
                                                                                                      }
                                                                                                      §§goto(addr0589);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc17_ || Boolean(param3))
                                                                                                      {
                                                                                                         §§goto(addr062d);
                                                                                                         §§push(_loc11_.outputAmount);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr063d);
                                                                                                }
                                                                                                §§goto(addr05a3);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0547);
                                                                                       }
                                                                                       §§goto(addr055a);
                                                                                    }
                                                                                    §§goto(addr040b);
                                                                                 }
                                                                                 §§goto(addr049c);
                                                                              }
                                                                              §§goto(addr0694);
                                                                           }
                                                                           §§goto(addr037a);
                                                                        }
                                                                        §§goto(addr03a1);
                                                                     }
                                                                  }
                                                                  §§goto(addr0382);
                                                               }
                                                               §§goto(addr039d);
                                                            }
                                                            §§goto(addr0194);
                                                         }
                                                         §§goto(addr039c);
                                                      }
                                                   }
                                                }
                                                §§goto(addr017a);
                                             }
                                             §§goto(addr0173);
                                          }
                                          §§goto(addr0194);
                                       }
                                       §§goto(addr015d);
                                    }
                                    §§goto(addr013b);
                                 }
                                 §§goto(addr039c);
                              }
                              return _loc4_;
                           }
                        }
                        §§goto(addr00a2);
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr006f);
            }
            §§goto(addr0082);
         }
         §§goto(addr007e);
      }
      
      private static function getMasteryInstantFinishPrice(param1:Number, param2:Number, param3:Number) : Number
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(param1);
         if(_loc5_)
         {
            §§push(1);
            if(_loc5_ || Boolean(param2))
            {
               §§push(param2);
               if(_loc5_ || Boolean(param3))
               {
                  §§push(param3);
                  if(!_loc6_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc5_ || BuildingMasteryProxy)
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc6_ && Boolean(param2)))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc5_)
                           {
                              addr0081:
                              addr0080:
                              addr0074:
                              §§push(1);
                              §§push(param2);
                              if(!_loc6_)
                              {
                                 addr007f:
                                 addr007b:
                                 §§push(§§pop() / (4 * param3));
                              }
                              §§push(§§pop() * (§§pop() - §§pop()));
                              if(_loc5_ || Boolean(param1))
                              {
                                 addr0090:
                                 §§push(§§pop());
                              }
                           }
                           var _loc4_:* = §§pop();
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              §§push(Math.ceil(Math.abs(_loc4_)));
                              if(_loc5_)
                              {
                                 var _temp_7:* = §§pop();
                                 _loc4_ = §§pop();
                                 §§push(_loc4_);
                                 if(!(_loc6_ && Boolean(param3)))
                                 {
                                    addr00d3:
                                    if(§§pop() < 1)
                                    {
                                       if(!(_loc6_ && BuildingMasteryProxy))
                                       {
                                          §§goto(addr00e7);
                                       }
                                    }
                                    §§goto(addr00f2);
                                 }
                                 §§goto(addr00f0);
                              }
                              §§goto(addr00d3);
                           }
                           addr00e7:
                           §§push(1);
                           if(_loc5_)
                           {
                              addr00f0:
                              _loc4_ = §§pop();
                              addr00f2:
                              return _loc4_;
                           }
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr007b);
            }
            §§goto(addr0074);
         }
         §§goto(addr0090);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.retrieveProxies();
         }
      }
      
      private function retrieveProxies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this._config = (facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy).config;
            if(_loc2_ || _loc1_)
            {
               this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
               if(_loc2_ || _loc2_)
               {
                  addr0071:
                  this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
               }
               §§goto(addr0084);
            }
            §§goto(addr0071);
         }
         addr0084:
      }
      
      public function getMasteryComponentVo(param1:BuildingDTO) : MasteryComponentVo
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:MasteryComponentVo = null;
         var _loc3_:Vector.<MasteryChallengeVo> = null;
         var _loc4_:ConfigMasteryChallengeDTO = null;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:MasteryChallengeVo = null;
         if(_loc8_)
         {
            §§push(Boolean(param1));
            if(_loc8_ || Boolean(_loc3_))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc8_ || Boolean(param1))
                  {
                     addr005a:
                     §§pop();
                     if(_loc8_ || Boolean(_loc2_))
                     {
                        §§goto(addr006e);
                     }
                     §§goto(addr0072);
                  }
               }
               addr006e:
               §§goto(addr0069);
            }
            §§goto(addr005a);
         }
         addr0069:
         if(Boolean(param1.currentMasteryChallenge))
         {
            addr0072:
            _loc2_ = new MasteryComponentVo();
            if(_loc8_ || Boolean(_loc2_))
            {
               §§push(_loc2_);
               §§push(this._featureProxy.isFeatureEnabled(ServerFeatureConstants.BUILDING_MASTERY));
               if(_loc8_)
               {
                  §§push(!§§pop());
               }
               §§pop().masteryLocked = §§pop();
               if(!_loc9_)
               {
                  addr00aa:
                  _loc2_.masteryUnlockLevel = this._featureProxy.masteryFeatureUnlockLevel;
                  if(_loc8_)
                  {
                     _loc2_.amountRC = this._resourceProxy.realCurrency;
                  }
               }
               _loc3_ = new Vector.<MasteryChallengeVo>();
               _loc4_ = param1.config.configMasteryChallengeDTO;
               if(!(_loc9_ && Boolean(_loc3_)))
               {
                  _loc5_ = false;
                  if(!_loc9_)
                  {
                     addr00f8:
                     _loc6_ = 0;
                  }
                  while(true)
                  {
                     §§push(_loc4_ == null);
                     if(!(_loc9_ && Boolean(_loc3_)))
                     {
                        §§push(!§§pop());
                        if(!_loc9_)
                        {
                           var _temp_8:* = §§pop();
                           §§push(_temp_8);
                           if(_temp_8)
                           {
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 addr026a:
                                 §§pop();
                                 if(_loc9_ && Boolean(param1))
                                 {
                                    break;
                                 }
                                 §§push(_loc6_ < 5);
                              }
                           }
                           if(!§§pop())
                           {
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 _loc2_.challenges = _loc3_;
                                 if(!(_loc9_ && Boolean(param1)))
                                 {
                                    return _loc2_;
                                 }
                              }
                              break;
                           }
                           _loc7_ = new MasteryChallengeVo();
                           _loc7_.targetProgress = _loc4_.targetProgress;
                           if(_loc8_ || Boolean(this))
                           {
                              _loc7_.bonusId = _loc4_.bonusID;
                              if(!(_loc9_ && Boolean(_loc2_)))
                              {
                                 _loc7_.challengeType = _loc4_.locaID;
                                 if(!(_loc9_ && Boolean(param1)))
                                 {
                                    if(_loc4_.id == param1.currentMasteryChallenge.id)
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(true);
                                          if(_loc8_)
                                          {
                                             _loc5_ = §§pop();
                                             if(!(_loc9_ && Boolean(param1)))
                                             {
                                                addr018c:
                                                _loc7_.currentProgress = param1.currentMasteryChallenge.currentProgress;
                                                if(!(_loc9_ && Boolean(_loc2_)))
                                                {
                                                   _loc2_.instantFinishPrice = getMasteryInstantFinishPrice(_loc4_.challengeValue,_loc7_.currentProgress,_loc7_.targetProgress);
                                                   if(!(_loc9_ && Boolean(this)))
                                                   {
                                                      addr01d1:
                                                      _loc2_.currentMasteryIndex = _loc6_;
                                                      if(_loc8_)
                                                      {
                                                      }
                                                   }
                                                }
                                             }
                                             addr0226:
                                             _loc3_.push(_loc7_);
                                          }
                                          else
                                          {
                                             addr01e3:
                                             if(§§pop())
                                             {
                                                if(_loc8_ || Boolean(this))
                                                {
                                                   _loc7_.currentProgress = 0;
                                                   if(!(_loc9_ && Boolean(_loc2_)))
                                                   {
                                                      §§goto(addr0226);
                                                   }
                                                   addr022c:
                                                   _loc4_ = _loc4_.nextChallenge;
                                                   if(!_loc9_)
                                                   {
                                                      _loc6_++;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr0226);
                                             }
                                             else
                                             {
                                                _loc7_.currentProgress = _loc4_.targetProgress;
                                                if(_loc8_ || Boolean(_loc2_))
                                                {
                                                   §§goto(addr0226);
                                                }
                                             }
                                          }
                                          §§goto(addr022c);
                                       }
                                       §§goto(addr01d1);
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                    }
                                    §§goto(addr01e3);
                                 }
                                 §§goto(addr0226);
                              }
                              §§goto(addr018c);
                           }
                           §§goto(addr01d1);
                        }
                     }
                     §§goto(addr026a);
                  }
                  §§goto(addr02b1);
               }
               §§goto(addr00f8);
            }
            §§goto(addr00aa);
         }
         addr02b1:
         return null;
      }
      
      public function getMasteryBonusForChallenge(param1:ResidentialFieldObjectVo, param2:Number, param3:int) : Vector.<MasteryBonusVo>
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:ConfigMasteryBonusGroupDTO = null;
         §§push(ConfigFactory.getResidentialBaseOutcomeResourceType(param1.buildingDTO.config));
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(ConfigFactory.getResidentialNeedOutcomeResourceType(param1));
         if(!(_loc9_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc7_:int = 0;
         var _loc8_:* = (this._config.masteryBoni[param2] as ConfigMasteryBonusDTO).buffs;
         while(true)
         {
            for each(_loc6_ in _loc8_)
            {
               if(_loc9_ && Boolean(param1))
               {
                  break;
               }
               if(param3 == _loc6_.groupId)
               {
                  if(_loc10_ || Boolean(param3))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return ConfigFactory.getMasteryBonusVosFromConfigMasteryBonusGroupDTO(_loc6_,_loc4_,_loc5_);
      }
   }
}

