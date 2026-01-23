package net.bigpoint.cityrama.model.construction
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ConstructionLayerDataProxy extends Proxy
   {
      
      public static const NAME:String = "ConstructionLayerDataProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || ConstructionLayerDataProxy)
      {
         NAME = "ConstructionLayerDataProxy";
      }
      
      private var _goodsProxy:PlayerGoodsStockProxy;
      
      private var _resourcesProxy:PlayerResourceProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _configProxy:GameConfigProxy;
      
      public function ConstructionLayerDataProxy(param1:String)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super(param1,null);
         }
      }
      
      public function CreateConstructionLayerVo(param1:BillboardObject, param2:Boolean = false) : ConstructionLayerVo
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc4_:ConstructionLayerStepVo = null;
         var _loc6_:ConfigPlayfieldItemDTO = null;
         var _loc7_:* = 0;
         var _loc8_:PhaseDTO = null;
         var _loc9_:Boolean = false;
         var _loc10_:PhaseDTO = null;
         var _loc11_:ConfigPhaseDTO = null;
         var _loc3_:Vector.<ConstructionLayerStepVo> = new Vector.<ConstructionLayerStepVo>();
         var _loc5_:BillboardObjectVo = param1.billboardObjectVo;
         §§push(_loc5_);
         if(!_loc16_)
         {
            var _temp_3:* = §§pop();
            §§push(_temp_3);
            §§push(_temp_3);
            if(!_loc16_)
            {
               if(§§pop())
               {
                  if(!(_loc16_ && Boolean(param1)))
                  {
                     §§pop();
                     if(!_loc16_)
                     {
                        §§push(_loc5_.buildingDTO);
                        if(!_loc16_)
                        {
                           §§push(§§pop());
                           if(_loc17_ || param2)
                           {
                              addr0098:
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              §§push(_temp_6);
                              if(_loc17_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc17_ || param2)
                                    {
                                       §§pop();
                                       if(!_loc16_)
                                       {
                                          addr00bd:
                                          §§push(Boolean(_loc5_.buildingDTO.config));
                                          if(_loc17_ || Boolean(this))
                                          {
                                             §§goto(addr00ce);
                                          }
                                          §§goto(addr019c);
                                       }
                                       §§goto(addr00e0);
                                    }
                                    §§goto(addr016f);
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr0114);
                           }
                           §§goto(addr0102);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr0203);
                  }
                  §§goto(addr0204);
               }
               §§goto(addr0098);
            }
            §§goto(addr0114);
         }
         addr00ce:
         if(§§pop())
         {
            if(_loc17_ || param2)
            {
               addr00e0:
               §§push(param1);
               if(!(_loc16_ && Boolean(param1)))
               {
                  var _temp_11:* = §§pop();
                  §§push(_temp_11);
                  §§push(_temp_11);
                  if(!_loc16_)
                  {
                     if(§§pop())
                     {
                        if(_loc17_)
                        {
                           addr0102:
                           §§pop();
                           if(!_loc16_)
                           {
                              §§push(_loc5_);
                              if(!_loc16_)
                              {
                                 addr0113:
                                 var _temp_12:* = §§pop();
                                 addr0114:
                                 §§push(_temp_12);
                                 if(_temp_12)
                                 {
                                    if(_loc17_ || Boolean(this))
                                    {
                                       §§pop();
                                       if(!(_loc16_ && Boolean(param1)))
                                       {
                                          §§push(Boolean(_loc5_.configPlayfieldItemVo));
                                          if(!(_loc16_ && param2))
                                          {
                                             addr0149:
                                             if(§§pop())
                                             {
                                                if(!(_loc16_ && Boolean(this)))
                                                {
                                                   §§push(param2);
                                                   if(_loc17_)
                                                   {
                                                      addr016f:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc16_ && Boolean(_loc3_)))
                                                         {
                                                            §§push(param1.billboardObjectVo);
                                                            if(!(_loc16_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(§§pop().isUnderConstruction());
                                                               if(!_loc16_)
                                                               {
                                                                  addr019c:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc17_ || Boolean(_loc3_))
                                                                     {
                                                                        addr01ae:
                                                                        §§push(param1.billboardObjectVo);
                                                                        if(!_loc16_)
                                                                        {
                                                                           _loc6_ = §§pop().configPlayfieldItemVo;
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01e3:
                                                                           _loc6_ = §§pop().configPlayfieldItemVo;
                                                                        }
                                                                        addr01eb:
                                                                        §§push(-1);
                                                                        if(_loc17_ || Boolean(this))
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           if(_loc17_)
                                                                           {
                                                                              addr0204:
                                                                              _loc9_ = false;
                                                                              addr0203:
                                                                           }
                                                                           addr0206:
                                                                           §§push(0);
                                                                        }
                                                                        for each(_loc10_ in _loc5_.activePhases)
                                                                        {
                                                                           for each(_loc11_ in _loc6_.constructionPhases)
                                                                           {
                                                                              if(_loc17_ || Boolean(param1))
                                                                              {
                                                                                 if(_loc10_.phaseId != _loc11_.phaseId)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(_loc11_.phaseOrderId);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    _loc7_ = §§pop();
                                                                                 }
                                                                              }
                                                                              _loc8_ = _loc10_;
                                                                              if(_loc17_)
                                                                              {
                                                                                 _loc9_ = true;
                                                                              }
                                                                              break;
                                                                           }
                                                                           if(_loc16_ && Boolean(_loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc9_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        if(_loc17_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              addr02c8:
                                                                              _loc3_ = this.createStepsFromPhases(_loc6_.constructionPhases,_loc10_,_loc7_,param2);
                                                                           }
                                                                           §§goto(addr02dc);
                                                                        }
                                                                        §§goto(addr02c8);
                                                                     }
                                                                     §§goto(addr0206);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc6_ = this.configProxy.getConfigPlayfieldItemById(param1.billboardObjectVo.buildingDTO.config.nextConfigId);
                                                                  }
                                                                  §§goto(addr01eb);
                                                               }
                                                               §§goto(addr0204);
                                                            }
                                                            §§goto(addr01e3);
                                                         }
                                                         §§goto(addr0203);
                                                      }
                                                      else
                                                      {
                                                         §§push(param1.billboardObjectVo);
                                                      }
                                                      §§goto(addr01e3);
                                                   }
                                                   §§goto(addr019c);
                                                }
                                                §§goto(addr01ae);
                                             }
                                             §§goto(addr01eb);
                                          }
                                          §§goto(addr016f);
                                       }
                                       §§goto(addr01ae);
                                    }
                                    §§goto(addr0204);
                                 }
                              }
                              §§goto(addr0149);
                           }
                           §§goto(addr0206);
                        }
                        §§goto(addr0149);
                     }
                     §§goto(addr0113);
                  }
                  §§goto(addr0114);
               }
               §§goto(addr019c);
            }
            §§goto(addr01ae);
         }
         addr02dc:
         return new ConstructionLayerVo(_loc3_,param2,param1,this.resourcesProxy.realCurrency);
      }
      
      private function createStepsFromPhases(param1:Vector.<ConfigPhaseDTO>, param2:PhaseDTO, param3:int, param4:Boolean) : Vector.<ConstructionLayerStepVo>
      {
         var _temp_1:* = true;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = _temp_1;
         var _loc6_:ConstructionLayerStepVo = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = NaN;
         var _loc13_:ConfigOutputDTO = null;
         var _loc14_:ConfigOutputDTO = null;
         var _loc5_:Vector.<ConstructionLayerStepVo> = new Vector.<ConstructionLayerStepVo>();
         loop0:
         for each(_loc7_ in param1)
         {
            §§push(_loc7_.phaseType);
            if(_loc20_)
            {
               §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
               if(_loc20_ || Boolean(param2))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc20_ || Boolean(param3))
                  {
                     §§push(!§§pop());
                     if(!_loc19_)
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(_loc20_ || Boolean(param1))
                        {
                           if(!§§pop())
                           {
                              if(!(_loc19_ && Boolean(this)))
                              {
                                 §§pop();
                                 if(_loc20_ || Boolean(param1))
                                 {
                                    §§push(param4);
                                    if(_loc20_)
                                    {
                                       §§push(§§pop());
                                       if(_loc20_ || Boolean(param3))
                                       {
                                          addr00df:
                                          var _temp_10:* = §§pop();
                                          §§push(_temp_10);
                                          §§push(_temp_10);
                                          if(!_loc19_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc19_)
                                                {
                                                   addr00f0:
                                                   §§pop();
                                                   if(_loc20_ || Boolean(param2))
                                                   {
                                                      §§push(_loc7_.phaseType);
                                                      if(_loc20_ || Boolean(param3))
                                                      {
                                                         addr0112:
                                                         §§push(ServerPhaseTypes.CREATE_PLACE_PERMISSION);
                                                         if(!(_loc19_ && Boolean(param3)))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc19_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!_loc19_)
                                                               {
                                                                  addr0134:
                                                                  var _temp_14:* = §§pop();
                                                                  §§push(_temp_14);
                                                                  §§push(_temp_14);
                                                                  if(!(_loc19_ && Boolean(param2)))
                                                                  {
                                                                     addr0143:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc20_ || Boolean(param3))
                                                                        {
                                                                           addr0155:
                                                                           §§pop();
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(_loc7_.phaseType);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(ServerPhaseTypes.CREATE_ACTIVATE);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    addr0173:
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       addr017a:
                                                                                       §§push(!§§pop());
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          addr0181:
                                                                                          var _temp_17:* = §§pop();
                                                                                          addr0182:
                                                                                          §§push(_temp_17);
                                                                                          if(_temp_17)
                                                                                          {
                                                                                             if(!(_loc19_ && Boolean(param2)))
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!(_loc19_ && Boolean(param1)))
                                                                                                {
                                                                                                   addr01b6:
                                                                                                   addr01ae:
                                                                                                   addr01a8:
                                                                                                   addr01a3:
                                                                                                   §§push(_loc7_.phaseType == ServerPhaseTypes.INSTANT_CONSTRUCTION);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      addr01b5:
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                addr01ba:
                                                                                                _loc6_ = new ConstructionLayerStepVo();
                                                                                                if(_loc20_ || Boolean(param1))
                                                                                                {
                                                                                                   §§push(_loc7_.phaseOrderId);
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      §§push(param3);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               if(param2)
                                                                                                               {
                                                                                                                  if(!(_loc19_ && Boolean(param1)))
                                                                                                                  {
                                                                                                                     §§push(param2.initTime);
                                                                                                                     if(_loc20_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(_loc20_ || Boolean(param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              var _temp_24:* = §§pop();
                                                                                                                              §§push(_temp_24);
                                                                                                                              §§push(_temp_24);
                                                                                                                              if(!(_loc19_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc19_ && Boolean(param1)))
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc20_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          §§push(param2.expirationTime);
                                                                                                                                          if(_loc20_ || Boolean(this))
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr0276:
                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr027d:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc20_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.timerProxy.currentTimeStamp);
                                                                                                                                                         if(_loc20_ || Boolean(param3))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= param2.expirationTime)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  _loc6_.state = ConstructionLayerStepVo.STATE_DONE;
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     addr02d0:
                                                                                                                                                                     _loc6_.runningPhase = param2;
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        addr0323:
                                                                                                                                                                        _loc6_.currentTime = this.timerProxy.currentTimeStamp;
                                                                                                                                                                        if(_loc20_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr0479:
                                                                                                                                                                        _loc6_.duration = _loc7_.durationConfig.duration;
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_.phaseType != ServerPhaseTypes.CREATE_PLACE_NORMAL)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc19_ && Boolean(param3)))
                                                                                                                                                                              {
                                                                                                                                                                                 addr04a9:
                                                                                                                                                                                 §§push(Boolean(_loc7_.instantFinshOutput));
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr04b5:
                                                                                                                                                                                    var _temp_32:* = §§pop();
                                                                                                                                                                                    addr04b6:
                                                                                                                                                                                    §§push(_temp_32);
                                                                                                                                                                                    if(_temp_32)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc19_ && Boolean(param1)))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          if(_loc20_ || Boolean(param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr04e1:
                                                                                                                                                                                             addr04d7:
                                                                                                                                                                                             if(_loc7_.instantFinshOutput.length > 0)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   if(!(_loc19_ && Boolean(this)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr04fb:
                                                                                                                                                                                                      var _loc17_:* = §§pop();
                                                                                                                                                                                                      if(_loc20_ || Boolean(param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         var _loc18_:* = _loc7_.instantFinshOutput;
                                                                                                                                                                                                         loop2:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§hasnext(_loc18_,_loc17_));
                                                                                                                                                                                                            if(!(_loc20_ || Boolean(param2)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc20_ || Boolean(param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc19_ && Boolean(this)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc19_ && Boolean(this)))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr05d1:
                                                                                                                                                                                                                        _loc6_.phaseID = _loc7_.phaseId;
                                                                                                                                                                                                                        if(!(_loc19_ && Boolean(param3)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr05e9:
                                                                                                                                                                                                                           _loc6_.isUpgrade = param4;
                                                                                                                                                                                                                           if(!(_loc19_ && Boolean(param1)))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr05fe:
                                                                                                                                                                                                                              _loc6_.rcStock = this.resourcesProxy.realCurrency;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr060c:
                                                                                                                                                                                                                        _loc17_ = 0;
                                                                                                                                                                                                                        addr060e:
                                                                                                                                                                                                                        _loc18_ = _loc7_.listEntryOutputs;
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§hasnext(_loc18_,_loc17_));
                                                                                                                                                                                                                           break loop2;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr069a:
                                                                                                                                                                                                                        if(!(_loc19_ && Boolean(param1)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc5_.push(_loc6_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                        addr0693:
                                                                                                                                                                                                                        addr060a:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr05fe);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr060e);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr069a);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc14_ = §§nextvalue(_loc17_,_loc18_);
                                                                                                                                                                                                               §§push(_loc14_.resourceConfig);
                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     var _temp_45:* = §§pop();
                                                                                                                                                                                                                     §§push(_temp_45);
                                                                                                                                                                                                                     if(_temp_45)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc20_ || Boolean(param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0545:
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr0559:
                                                                                                                                                                                                                              addr0551:
                                                                                                                                                                                                                              if(_loc14_.resourceConfig.type != ServerResConst.RESOURCE_REALCURRENCY)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc19_ && Boolean(param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc6_.instantFinishCost = _loc14_.outputAmount;
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0559);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0545);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0551);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc13_ = §§nextvalue(_loc17_,_loc18_);
                                                                                                                                                                                                            if(_loc13_.outputAmount < 0)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc6_.configOutput = _loc13_;
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc13_.goodConfig != null)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc6_.currentStock = this.goodsProxy.getCurrentStockOfGood(_loc13_.goodConfig.id);
                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr066b:
                                                                                                                                                                                                                              if(_loc13_.resourceConfig == null)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr067b:
                                                                                                                                                                                                                        _loc6_.currentStock = this.resourcesProxy.getResourceAmountByConstant(_loc13_.resourceConfig.type);
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr066b);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr067b);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr066b);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr0693);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr069a);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr060e);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr060c);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr05d1);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr04e1);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              _loc6_.instantFinishCost = 0;
                                                                                                                                                                              if(!(_loc19_ && Boolean(param1)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr05d1);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr05e9);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr05fe);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr0460:
                                                                                                                                                                        _loc6_.state = ConstructionLayerStepVo.STATE_UNAVAILABLE;
                                                                                                                                                                        if(!(_loc19_ && Boolean(param3)))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr0479);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr02f5:
                                                                                                                                                                     _loc6_.state = ConstructionLayerStepVo.STATE_DONE;
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr0323);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr04d7);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr03fe:
                                                                                                                                                                  _loc6_.state = ConstructionLayerStepVo.STATE_AVAILABLE;
                                                                                                                                                                  if(!(_loc19_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr0479);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr060a);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               _loc6_.state = ConstructionLayerStepVo.STATE_RUNNING;
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr02d0);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr02f5);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr02f5);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr02e9:
                                                                                                                                                            addr02eb:
                                                                                                                                                            if(§§pop() <= 0)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr02f5);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr060a);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               _loc6_.state = ConstructionLayerStepVo.STATE_AVAILABLE;
                                                                                                                                                               if(!(_loc19_ && Boolean(param1)))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr0323);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04a9);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0460);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_.durationConfig.duration);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02e9);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04e1);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02eb);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02e9);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0365:
                                                                                                                                          _loc6_.state = ConstructionLayerStepVo.STATE_DONE;
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0479);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr05d1);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr03f4:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr03fe);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          _loc6_.state = ConstructionLayerStepVo.STATE_UNAVAILABLE;
                                                                                                                                          if(_loc20_ || Boolean(param1))
                                                                                                                                          {
                                                                                                                                             §§goto(addr0479);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr05e9);
                                                                                                                                 }
                                                                                                                                 §§goto(addr027d);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr03c9:
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc20_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          addr03da:
                                                                                                                                          §§push(_loc5_[_loc5_.length - 1].state == ConstructionLayerStepVo.STATE_DONE);
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr03f4);
                                                                                                                                          }
                                                                                                                                          §§goto(addr04e1);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0479);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04b5);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr03f4);
                                                                                                                           }
                                                                                                                           §§goto(addr04b5);
                                                                                                                        }
                                                                                                                        §§goto(addr0276);
                                                                                                                     }
                                                                                                                     §§goto(addr02e9);
                                                                                                                  }
                                                                                                                  §§goto(addr060a);
                                                                                                               }
                                                                                                               §§goto(addr0323);
                                                                                                            }
                                                                                                            §§goto(addr03da);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(_loc7_.phaseOrderId);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               addr034c:
                                                                                                               §§push(param3);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc19_ && Boolean(param3)))
                                                                                                                     {
                                                                                                                        §§goto(addr0365);
                                                                                                                     }
                                                                                                                     §§goto(addr05d1);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc7_.phaseOrderId);
                                                                                                                     if(!(_loc19_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        §§push(param3);
                                                                                                                        if(_loc20_ || Boolean(param3))
                                                                                                                        {
                                                                                                                           addr039c:
                                                                                                                           §§push(1);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_.length == 0);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          var _temp_57:* = §§pop();
                                                                                                                                          §§push(_temp_57);
                                                                                                                                          §§push(_temp_57);
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr03c9);
                                                                                                                                          }
                                                                                                                                          §§goto(addr04b6);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04e1);
                                                                                                                                    }
                                                                                                                                    §§goto(addr05d1);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_.phaseOrderId);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       addr0456:
                                                                                                                                       addr0455:
                                                                                                                                       addr0453:
                                                                                                                                       if(§§pop() > param3 + 1)
                                                                                                                                       {
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0460);
                                                                                                                                          }
                                                                                                                                          §§goto(addr04a9);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0479);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr060c);
                                                                                                                              }
                                                                                                                              §§goto(addr0456);
                                                                                                                           }
                                                                                                                           §§goto(addr0455);
                                                                                                                        }
                                                                                                                        §§goto(addr0453);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr060c);
                                                                                                               }
                                                                                                               §§goto(addr039c);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr04fb);
                                                                                                      }
                                                                                                      §§goto(addr039c);
                                                                                                   }
                                                                                                   §§goto(addr034c);
                                                                                                }
                                                                                                §§goto(addr05d1);
                                                                                             }
                                                                                             §§goto(addr01b5);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr01b6);
                                                                                 }
                                                                                 §§goto(addr01ae);
                                                                              }
                                                                              §§goto(addr01a8);
                                                                           }
                                                                           §§goto(addr01a3);
                                                                        }
                                                                        §§goto(addr01b5);
                                                                     }
                                                                     §§goto(addr0181);
                                                                  }
                                                                  §§goto(addr0182);
                                                               }
                                                               §§goto(addr01b5);
                                                            }
                                                            §§goto(addr0155);
                                                         }
                                                         §§goto(addr0173);
                                                      }
                                                      §§goto(addr01a8);
                                                   }
                                                   §§goto(addr01ba);
                                                }
                                                §§goto(addr0181);
                                             }
                                             §§goto(addr0134);
                                          }
                                          §§goto(addr0143);
                                       }
                                       §§goto(addr0181);
                                    }
                                    §§goto(addr00f0);
                                 }
                                 §§goto(addr01a3);
                              }
                              §§goto(addr017a);
                           }
                           §§goto(addr00df);
                        }
                        §§goto(addr0143);
                     }
                     §§goto(addr01b6);
                  }
                  §§goto(addr00df);
               }
               §§goto(addr01ae);
            }
            §§goto(addr0112);
         }
         if(_loc20_)
         {
            §§push(int(_loc5_.length));
            if(!_loc19_)
            {
               _loc8_ = §§pop();
               if(_loc20_ || Boolean(this))
               {
                  §§push(1);
                  if(!(_loc19_ && Boolean(param3)))
                  {
                     _loc9_ = §§pop();
                     if(_loc20_)
                     {
                        §§push(0);
                        if(_loc20_ || Boolean(this))
                        {
                           _loc10_ = §§pop();
                           if(!(_loc19_ && Boolean(param2)))
                           {
                              §§push(0);
                              if(_loc20_ || Boolean(param1))
                              {
                                 _loc11_ = §§pop();
                                 if(_loc20_)
                                 {
                                    if(param4)
                                    {
                                       if(!(_loc19_ && Boolean(param3)))
                                       {
                                          addr0744:
                                          §§push(0);
                                          if(!_loc19_)
                                          {
                                             _loc9_ = §§pop();
                                             if(!(_loc19_ && Boolean(this)))
                                             {
                                                addr0770:
                                                addr075c:
                                                §§push(1);
                                                if(_loc20_ || Boolean(param1))
                                                {
                                                   addr076c:
                                                   _loc10_ = §§pop();
                                                   addr076e:
                                                   §§push(0);
                                                }
                                                var _loc12_:* = §§pop();
                                                if(_loc20_ || Boolean(this))
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(_loc12_ >= _loc8_)
                                                      {
                                                         if(_loc20_)
                                                         {
                                                            §§push(param4);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc20_ || Boolean(param3))
                                                               {
                                                                  var _temp_68:* = §§pop();
                                                                  §§push(_temp_68);
                                                                  if(_temp_68)
                                                                  {
                                                                     if(_loc20_ || Boolean(this))
                                                                     {
                                                                        addr0828:
                                                                        §§pop();
                                                                        if(!(_loc20_ || Boolean(param1)))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr0844:
                                                                        §§push(_loc5_.length > 0);
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr0855:
                                                                        _loc5_[0].instantFinishCost = _loc11_;
                                                                        if(!_loc19_)
                                                                        {
                                                                           addr0867:
                                                                           _loc5_[0].displayInstantButton = false;
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                            §§goto(addr0828);
                                                         }
                                                         §§goto(addr0867);
                                                      }
                                                      else
                                                      {
                                                         _loc5_[_loc12_].stepIndex = _loc9_;
                                                         if(_loc19_ && Boolean(param3))
                                                         {
                                                            continue;
                                                         }
                                                         _loc5_[_loc12_].numIndices = _loc8_ - _loc10_;
                                                         if(_loc19_)
                                                         {
                                                            break;
                                                         }
                                                         _loc9_++;
                                                         if(!_loc19_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc11_);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(§§pop() + _loc5_[_loc12_].instantFinishCost);
                                                               }
                                                               _loc11_ = §§pop();
                                                               if(!(_loc20_ || Boolean(param3)))
                                                               {
                                                                  break;
                                                               }
                                                               _loc12_++;
                                                               if(!(_loc19_ && Boolean(this)))
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr0867);
                                                            }
                                                            addr07bc:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr0844);
                                                         }
                                                         §§goto(addr0855);
                                                      }
                                                   }
                                                   return _loc5_;
                                                }
                                                §§goto(addr07bc);
                                             }
                                             §§goto(addr076e);
                                          }
                                          §§goto(addr0770);
                                       }
                                       §§goto(addr075c);
                                    }
                                 }
                                 §§goto(addr076e);
                              }
                              §§goto(addr076c);
                           }
                           §§goto(addr0744);
                        }
                        §§goto(addr0770);
                     }
                     §§goto(addr0744);
                  }
                  §§goto(addr0770);
               }
               §§goto(addr075c);
            }
            §§goto(addr0770);
         }
         §§goto(addr075c);
      }
      
      public function UpdateConstructionLayerVoResources(param1:ConstructionLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:ConstructionLayerStepVo = null;
         §§push(this.resourcesProxy.realCurrency);
         if(_loc8_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(this.timerProxy.currentTimeStamp);
         if(_loc8_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc7_ && Boolean(this)))
         {
            param1.rcStock = _loc2_;
         }
         for each(_loc4_ in param1.constructionSteps)
         {
            §§push(_loc4_.configOutput);
            if(!_loc7_)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(!_loc7_)
               {
                  §§push(_loc4_.configOutput);
                  if(_loc8_ || _loc3_)
                  {
                     addr00a3:
                     if(§§pop().resourceConfig)
                     {
                        if(_loc7_ && _loc3_)
                        {
                           continue;
                        }
                        _loc4_.currentStock = this.resourcesProxy.getResourceAmountByConstant(_loc4_.configOutput.resourceConfig.type);
                        if(_loc8_)
                        {
                        }
                     }
                     else
                     {
                        addr00de:
                        if(_loc4_.configOutput.goodConfig)
                        {
                           if(_loc8_ || Boolean(this))
                           {
                              _loc4_.currentStock = this.goodsProxy.getCurrentStockOfGood(_loc4_.configOutput.goodConfig.id);
                              if(_loc8_)
                              {
                                 addr011d:
                                 _loc4_.rcStock = _loc2_;
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           _loc4_.currentTime = _loc3_;
                           continue;
                        }
                     }
                     §§goto(addr011d);
                  }
                  §§goto(addr00de);
               }
               §§goto(addr011d);
            }
            §§goto(addr00a3);
         }
      }
      
      private function get goodsProxy() : PlayerGoodsStockProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._goodsProxy);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     this._goodsProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                  }
               }
               addr0045:
               return this._goodsProxy;
            }
         }
         §§goto(addr0045);
      }
      
      private function get resourcesProxy() : PlayerResourceProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._resourcesProxy);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr003b:
                     this._resourcesProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               return this._resourcesProxy;
            }
         }
         §§goto(addr003b);
      }
      
      private function get timerProxy() : TimerProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._timerProxy);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  }
               }
               addr0045:
               return this._timerProxy;
            }
         }
         §§goto(addr0045);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._configProxy);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0055:
                     this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._configProxy;
            }
         }
         §§goto(addr0055);
      }
   }
}

