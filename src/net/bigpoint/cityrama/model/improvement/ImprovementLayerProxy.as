package net.bigpoint.cityrama.model.improvement
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.improvement.vo.ResidentialImprovementViewVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementReplacementMiniLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.residentialBook.vo.ImprovementSlotComponentVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemImprovementSlotDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.vo.ImprovementInventoryViewVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ImprovementLayerProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ImprovementLayerProxy";
      
      public static const SIZE_SMALL:String = "SIZE_SMALL";
      
      public static const SIZE_MINI:String = "SIZE_MINI";
      
      public static const SIZE_BIG:String = "SIZE_BIG";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "ImprovementLayerProxy";
         if(_loc2_ || _loc2_)
         {
            SIZE_SMALL = "SIZE_SMALL";
            if(_loc2_ || ImprovementLayerProxy)
            {
               SIZE_MINI = "SIZE_MINI";
               if(_loc2_ || _loc2_)
               {
                  addr006a:
                  SIZE_BIG = "SIZE_BIG";
               }
               §§goto(addr0073);
            }
         }
         §§goto(addr006a);
      }
      addr0073:
      
      private var _pGSP:PlayerGoodsStockProxy;
      
      private var _gCP:GameConfigProxy;
      
      private var _timP:TimerProxy;
      
      private var _pResP:PlayerResourceProxy;
      
      public function ImprovementLayerProxy(param1:String = "ImprovementLayerProxy", param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function improvementGfx(param1:ConfigImprovementDTO, param2:String = "SIZE_SMALL") : BriskDynaVo
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = param2;
         if(!_loc5_)
         {
            §§push(SIZE_MINI);
            if(_loc4_ || Boolean(param1))
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_ || ImprovementLayerProxy)
                     {
                        addr00ca:
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr00f8:
                        §§push(1);
                        if(_loc4_ || Boolean(param1))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(SIZE_SMALL);
                     if(_loc4_ || ImprovementLayerProxy)
                     {
                        addr00e7:
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           addr00ee:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr00f8);
                              }
                              else
                              {
                                 addr0120:
                                 §§push(2);
                                 if(_loc4_ || Boolean(param1))
                                 {
                                 }
                              }
                              addr0140:
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push(§§findproperty(BriskDynaVo));
                                    §§push("gui_improvements_small");
                                    §§push("improvement_mini_");
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       §§push(§§pop() + param1.gfxId);
                                    }
                                    return new §§pop().BriskDynaVo(§§pop(),§§pop());
                                 case 1:
                                    §§push(§§findproperty(BriskDynaVo));
                                    §§push("gui_improvements_small");
                                    §§push("improvement_small_");
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + param1.gfxId);
                                    }
                                    return new §§pop().BriskDynaVo(§§pop(),§§pop());
                                 case 2:
                                    §§push(§§findproperty(BriskDynaVo));
                                    §§push("gui_improvements_big");
                                    §§push("improvement_big_");
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + param1.gfxId);
                                    }
                                    return new §§pop().BriskDynaVo(§§pop(),§§pop());
                                 default:
                                    return null;
                              }
                           }
                           else
                           {
                              addr011c:
                              addr011b:
                              if(SIZE_BIG === _loc3_)
                              {
                                 §§goto(addr0120);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              §§goto(addr0140);
                           }
                           §§goto(addr0120);
                        }
                        §§goto(addr011c);
                     }
                     §§goto(addr011b);
                  }
                  §§goto(addr0140);
               }
               §§goto(addr00ee);
            }
            §§goto(addr00e7);
         }
         §§goto(addr00ca);
      }
      
      public static function improvementName(param1:ConfigImprovementDTO, param2:Boolean = false) : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && param2))
         {
            if(param2)
            {
               if(_loc3_)
               {
                  §§push(ResourceManager.getInstance());
                  if(_loc3_)
                  {
                     §§push(§§pop().getString(String("rcl.improvements.name"),String("rcl.improvements.name." + param1.locaId + ".capital")));
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0077:
                     return §§pop().getString(String("rcl.improvements.name"),String("rcl.improvements.name." + param1.locaId));
                  }
                  return §§pop();
               }
               addr0071:
               §§push(ResourceManager.getInstance());
               §§goto(addr0077);
            }
         }
         §§goto(addr0071);
      }
      
      public static function improvementBackground(param1:String, param2:String = "SIZE_SMALL") : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = param2;
         if(!_loc4_)
         {
            §§push(SIZE_SMALL);
            if(!_loc4_)
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || ImprovementLayerProxy)
                     {
                        §§push(0);
                        if(_loc5_ || ImprovementLayerProxy)
                        {
                        }
                     }
                     else
                     {
                        addr00f6:
                        §§push(2);
                        if(_loc5_)
                        {
                        }
                     }
                     addr010e:
                     switch(§§pop())
                     {
                        case 0:
                           return new BriskDynaVo("gui_popups_paperPopup","hip_cardboard_small");
                        case 1:
                           return new BriskDynaVo("gui_popups_paperPopup","hip_cardboard_mini");
                        case 2:
                           return new BriskDynaVo("gui_popups_paperPopup","hip_cardboard_big");
                        default:
                           return null;
                     }
                  }
                  else
                  {
                     §§push(SIZE_MINI);
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        addr00b6:
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           addr00bd:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && Boolean(_loc3_)))
                              {
                                 addr00da:
                                 §§push(1);
                                 if(_loc5_ || ImprovementLayerProxy)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr00f6);
                              }
                           }
                           else
                           {
                              addr00f2:
                              addr00f1:
                              if(SIZE_BIG === _loc3_)
                              {
                                 §§goto(addr00f6);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           §§goto(addr010e);
                        }
                        §§goto(addr00f2);
                     }
                     §§goto(addr00f1);
                  }
                  §§goto(addr00f6);
               }
               §§goto(addr00bd);
            }
            §§goto(addr00b6);
         }
         §§goto(addr00da);
      }
      
      public static function improvementQualityBadge(param1:String, param2:String = "SIZE_SMALL") : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param2);
         while(true)
         {
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               loop1:
               while(true)
               {
                  §§push(SIZE_MINI);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc4_ && ImprovementLayerProxy)
                                       {
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             loop13:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §§push(param1);
                                                   if(_loc4_)
                                                   {
                                                      break loop7;
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(_loc5_)
                                                   {
                                                      §§push(ServerImprovementConstants.QUALITY_COMMON);
                                                      if(_loc5_ || ImprovementLayerProxy)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc5_ || Boolean(param2))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc4_ && ImprovementLayerProxy))
                                                                  {
                                                                     addr0197:
                                                                     if(!(_loc4_ && Boolean(param2)))
                                                                     {
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              return new BriskDynaVo("gui_popups_paperPopup","hip_badge_common_mini");
                                                                           case 1:
                                                                              return new BriskDynaVo("gui_popups_paperPopup","hip_badge_rare_mini");
                                                                           case 2:
                                                                              return new BriskDynaVo("gui_popups_paperPopup","hip_badge_epic_mini");
                                                                           case 3:
                                                                              return new BriskDynaVo("gui_popups_paperPopup","hip_badge_legendary_mini");
                                                                           default:
                                                                              break loop13;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0355:
                                                                     if(!(_loc5_ || Boolean(param2)))
                                                                     {
                                                                        addr0510:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              return new BriskDynaVo("gui_popups_paperPopup","hip_badge_common_big");
                                                                           case 1:
                                                                              return new BriskDynaVo("gui_popups_paperPopup","hip_badge_rare_big");
                                                                           case 2:
                                                                              return new BriskDynaVo("gui_popups_paperPopup","hip_badge_epic_big");
                                                                           case 3:
                                                                              return new BriskDynaVo("gui_popups_paperPopup","hip_badge_legendary_big");
                                                                           default:
                                                                              break loop13;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr0365:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_common_small");
                                                                     case 1:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_rare_small");
                                                                     case 2:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_epic_small");
                                                                     case 3:
                                                                        return new BriskDynaVo("gui_popups_paperPopup","hip_badge_legendary_small");
                                                                     default:
                                                                        break loop13;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr02fe:
                                                                  §§push(2);
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               §§goto(addr0355);
                                                            }
                                                            else
                                                            {
                                                               §§push(ServerImprovementConstants.QUALITY_RARE);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc4_ && Boolean(param1)))
                                                                     {
                                                                        §§push(1);
                                                                        if(!(_loc4_ && ImprovementLayerProxy))
                                                                        {
                                                                           §§goto(addr0197);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr0355);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr04ea:
                                                                        §§push(3);
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        addr0508:
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr0510);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(ServerImprovementConstants.QUALITY_EPIC);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!(_loc4_ && Boolean(param2)))
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc4_ && ImprovementLayerProxy))
                                                                              {
                                                                                 §§push(2);
                                                                                 if(_loc5_ || Boolean(param2))
                                                                                 {
                                                                                    §§goto(addr0197);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0271:
                                                                                 §§push(0);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§goto(addr0355);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr0508);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(ServerImprovementConstants.QUALITY_LEGENDARY);
                                                                              if(!(_loc4_ && Boolean(param1)))
                                                                              {
                                                                                 addr0158:
                                                                                 §§push(_loc3_);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    break loop8;
                                                                                 }
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc4_ && ImprovementLayerProxy))
                                                                                    {
                                                                                       addr0171:
                                                                                       §§push(3);
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          §§goto(addr0197);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr0355);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0244:
                                                                                       §§push(ServerImprovementConstants.QUALITY_COMMON);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(!(_loc5_ || _loc3_))
                                                                                          {
                                                                                             break loop8;
                                                                                          }
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§goto(addr0271);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr02fe);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(ServerImprovementConstants.QUALITY_RARE);
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                addr0291:
                                                                                                §§push(_loc3_);
                                                                                                if(_loc5_ || Boolean(param2))
                                                                                                {
                                                                                                   addr02a0:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         if(_loc5_ || ImprovementLayerProxy)
                                                                                                         {
                                                                                                            §§goto(addr0355);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr0508);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr04ea);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(ServerImprovementConstants.QUALITY_EPIC);
                                                                                                      if(_loc5_ || Boolean(param1))
                                                                                                      {
                                                                                                         addr02d2:
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc4_ && ImprovementLayerProxy)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(_loc5_ || Boolean(param2))
                                                                                                            {
                                                                                                               §§goto(addr02fe);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr043f:
                                                                                                               §§push(0);
                                                                                                               if(_loc4_ && ImprovementLayerProxy)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr0508);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(ServerImprovementConstants.QUALITY_LEGENDARY);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr0316:
                                                                                                               §§push(_loc3_);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(3);
                                                                                                                        if(!(_loc4_ && ImprovementLayerProxy))
                                                                                                                        {
                                                                                                                           §§goto(addr0355);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr0508);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr04ea);
                                                                                                                     }
                                                                                                                     §§goto(addr0508);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(4);
                                                                                                                     if(!(_loc5_ || Boolean(param1)))
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0355);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!(_loc4_ && ImprovementLayerProxy))
                                                                                                                  {
                                                                                                                     break loop8;
                                                                                                                  }
                                                                                                               }
                                                                                                               break loop7;
                                                                                                               addr058a:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(2);
                                                                                                                     if(_loc5_ || ImprovementLayerProxy)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  break loop7;
                                                                                                                  addr05ca:
                                                                                                               }
                                                                                                               §§push(3);
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            addr05c6:
                                                                                                         }
                                                                                                         §§goto(addr0355);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr042e:
                                                                                                         §§push(_loc3_);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            break loop8;
                                                                                                         }
                                                                                                         addr0435:
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§goto(addr043f);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr04ea);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(ServerImprovementConstants.QUALITY_RARE);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc4_ && Boolean(param2))
                                                                                                               {
                                                                                                                  break loop8;
                                                                                                               }
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  if(_loc4_ && Boolean(param2))
                                                                                                                  {
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  §§push(1);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(ServerImprovementConstants.QUALITY_EPIC);
                                                                                                                  if(!(_loc4_ && Boolean(param2)))
                                                                                                                  {
                                                                                                                     addr04a0:
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        break loop8;
                                                                                                                     }
                                                                                                                     addr04a7:
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc5_ || ImprovementLayerProxy))
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        §§push(2);
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(ServerImprovementConstants.QUALITY_LEGENDARY);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        addr04d1:
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(_loc5_ || Boolean(param2))
                                                                                                                        {
                                                                                                                           if(§§pop() === §§pop())
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              §§goto(addr04ea);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(4);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr05c6);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0508);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr058a);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0508);
                                                                                                            }
                                                                                                            §§goto(addr04a0);
                                                                                                         }
                                                                                                         §§goto(addr0508);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0508);
                                                                                                }
                                                                                                §§goto(addr0435);
                                                                                             }
                                                                                             §§goto(addr0316);
                                                                                          }
                                                                                          §§goto(addr0355);
                                                                                       }
                                                                                       §§goto(addr0291);
                                                                                    }
                                                                                    §§goto(addr0510);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(4);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0197);
                                                                              }
                                                                              §§goto(addr0291);
                                                                           }
                                                                           §§goto(addr0508);
                                                                        }
                                                                        §§goto(addr04a7);
                                                                     }
                                                                     §§goto(addr04a0);
                                                                  }
                                                               }
                                                               §§goto(addr0158);
                                                            }
                                                         }
                                                         §§goto(addr02a0);
                                                      }
                                                      §§goto(addr02d2);
                                                   }
                                                   §§goto(addr0171);
                                                   break;
                                                case 1:
                                                   §§push(param1);
                                                   if(_loc4_ && Boolean(param2))
                                                   {
                                                      break loop7;
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(_loc5_ || ImprovementLayerProxy)
                                                   {
                                                      §§goto(addr0244);
                                                   }
                                                   §§goto(addr0271);
                                                   break;
                                                case 2:
                                                   §§push(param1);
                                                   if(_loc4_ && ImprovementLayerProxy)
                                                   {
                                                      break loop7;
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(_loc5_ || Boolean(param2))
                                                   {
                                                      §§push(ServerImprovementConstants.QUALITY_COMMON);
                                                      if(!(_loc4_ && Boolean(param1)))
                                                      {
                                                         §§goto(addr042e);
                                                      }
                                                      §§goto(addr04d1);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      continue loop7;
                                                   }
                                             }
                                             return null;
                                          }
                                          while(true)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§goto(addr05b6);
                                                }
                                             }
                                             else
                                             {
                                                §§push(SIZE_BIG);
                                                while(true)
                                                {
                                                   §§goto(addr05c6);
                                                }
                                                addr05c5:
                                             }
                                          }
                                          break;
                                       }
                                       break loop3;
                                    }
                                 }
                                 §§goto(addr05ca);
                              }
                              else
                              {
                                 §§push(SIZE_SMALL);
                                 if(_loc5_ || Boolean(param2))
                                 {
                                    §§goto(addr058a);
                                 }
                              }
                              §§goto(addr05c5);
                           }
                           break;
                        }
                        §§goto(addr05c6);
                     }
                     break;
                  }
                  §§goto(addr05c5);
               }
               continue;
            }
            §§goto(addr05b6);
         }
      }
      
      public function get improvementInventoryViewVo() : ImprovementInventoryViewVo
      {
         return new ImprovementInventoryViewVo(this.playerGoodStockProxy.currentImprovementStock());
      }
      
      public function getResidentialImprovementViewVo(param1:ResidentialFieldObjectVo) : ResidentialImprovementViewVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ResidentialImprovementViewVo = new ResidentialImprovementViewVo();
         if(!_loc3_)
         {
            _loc2_.residentialVo = param1;
            if(_loc4_ || Boolean(this))
            {
               addr0053:
               _loc2_.inventoryData = this.improvementInventoryViewVo;
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  _loc2_.slotData = this.getSlotData(param1);
               }
            }
            return _loc2_;
         }
         §§goto(addr0053);
      }
      
      public function getImprovementMiniLayerVo(param1:ImprovementVo, param2:Number, param3:Number) : ImprovementMiniLayerVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:ImprovementMiniLayerVo = new ImprovementMiniLayerVo();
         _loc4_.improvementVo = param1;
         if(!(_loc6_ && Boolean(this)))
         {
            _loc4_.slotId = param2;
            if(_loc5_)
            {
               §§goto(addr005a);
            }
            §§goto(addr0066);
         }
         addr005a:
         _loc4_.buildingId = param3;
         if(!_loc6_)
         {
            addr0066:
            _loc4_.realCurrency = this.resourceProxy.realCurrency;
            if(!_loc6_)
            {
               _loc4_.currentTime = this.timerProxy.currentTimeStamp;
            }
         }
         return _loc4_;
      }
      
      public function getImprovementReplacementMiniLayerVo(param1:ImprovementMiniLayerVo, param2:ImprovementVo, param3:String = " ") : ImprovementReplacementMiniLayerVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!(_loc6_ && Boolean(param3)))
         {
            §§push(param3);
            if(!_loc6_)
            {
               if(§§pop() == " ")
               {
                  if(!_loc6_)
                  {
                     addr004f:
                     §§push(ImprovementReplacementMiniLayerVo.STATE_REPLACE);
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                     }
                     param3 = §§pop();
                  }
               }
               §§goto(addr0050);
            }
            §§goto(addr004f);
         }
         addr0050:
         var _loc4_:ImprovementReplacementMiniLayerVo = new ImprovementReplacementMiniLayerVo(param1);
         _loc4_.state = param3;
         if(!(_loc6_ && Boolean(param1)))
         {
            _loc4_.newImprovement = param2;
            if(_loc5_ || Boolean(param1))
            {
               _loc4_.realCurrency = this.resourceProxy.realCurrency;
               if(_loc5_)
               {
                  _loc4_.currentTime = this.timerProxy.currentTimeStamp;
               }
            }
         }
         return _loc4_;
      }
      
      private function getSlotData(param1:ResidentialFieldObjectVo) : Vector.<ImprovementSlotComponentVo>
      {
         §§push(false);
         var _loc18_:Boolean = true;
         var _loc19_:* = §§pop();
         var _loc5_:ImprovementSlotComponentVo = null;
         var _loc7_:ImprovementVo = null;
         var _loc8_:ConfigPlayfieldItemImprovementSlotDTO = null;
         var _loc9_:* = false;
         var _loc10_:* = 0;
         var _loc11_:ImprovementSlotComponentVo = null;
         var _loc12_:ImprovementSlotComponentVo = null;
         var _loc13_:ConfigPlayfieldItemImprovementSlotDTO = null;
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = this.configProxy.getAllLevelConfigs(param1.configPlayfieldItemVo.id);
         var _loc3_:Vector.<ImprovementSlotComponentVo> = new Vector.<ImprovementSlotComponentVo>();
         var _loc4_:uint = _loc2_[_loc2_.length - 1].improvementSlots.length;
         var _loc6_:int = 0;
         while(true)
         {
            §§push(_loc6_);
            if(!_loc18_)
            {
               break;
            }
            if(§§pop() >= _loc4_)
            {
               if(!(_loc19_ && Boolean(_loc3_)))
               {
                  §§push(0);
                  if(!_loc19_)
                  {
                     break;
                  }
                  addr02a9:
                  _loc10_ = §§pop();
                  if(!_loc19_)
                  {
                     addr02b3:
                     var _loc14_:* = 0;
                     addr02b1:
                     if(!(_loc19_ && Boolean(this)))
                     {
                        addr02c3:
                        var _loc15_:* = _loc3_;
                        loop3:
                        while(true)
                        {
                           §§push(§§hasnext(_loc15_,_loc14_));
                           addr03ca:
                           while(§§pop())
                           {
                              _loc11_ = §§nextvalue(_loc14_,_loc15_);
                              if(_loc11_.currentState == ImprovementSlotComponent.STATE_SLOT_LOCKED)
                              {
                                 if(!_loc19_)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc10_);
                                       while(§§pop() < _loc2_.length)
                                       {
                                          §§push(0);
                                          if(_loc18_ || Boolean(_loc3_))
                                          {
                                             for each(_loc13_ in _loc2_[_loc10_].improvementSlots)
                                             {
                                                if(_loc13_.id == _loc11_.configSlot.id)
                                                {
                                                   if(_loc18_)
                                                   {
                                                      _loc11_.unlockLevel = _loc10_ + 1;
                                                      if(_loc19_ && Boolean(_loc2_))
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   _loc9_ = true;
                                                   break;
                                                }
                                             }
                                             if(!(_loc19_ && Boolean(_loc2_)))
                                             {
                                                §§push(_loc9_);
                                                if(_loc18_ || Boolean(this))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      _loc10_++;
                                                      continue loop4;
                                                   }
                                                   if(_loc19_ && Boolean(this))
                                                   {
                                                      break;
                                                   }
                                                   §§push(false);
                                                }
                                                _loc9_ = §§pop();
                                                if(_loc19_ && Boolean(_loc3_))
                                                {
                                                   break;
                                                }
                                                _loc10_++;
                                                if(!(_loc19_ && Boolean(this)))
                                                {
                                                   break;
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                       break;
                                    }
                                 }
                              }
                              continue loop3;
                           }
                           break;
                        }
                        addr03ce:
                     }
                     addr03d0:
                  }
               }
               return _loc3_;
            }
            _loc5_ = new ImprovementSlotComponentVo();
            _loc5_.configSlot = _loc2_[_loc2_.length - 1].improvementSlots[_loc6_];
            if(!_loc19_)
            {
               _loc5_.currentState = ImprovementSlotComponent.STATE_SLOT_LOCKED;
               if(!_loc18_)
               {
                  continue;
               }
            }
            _loc3_.push(_loc5_);
            if(!_loc19_)
            {
               _loc6_++;
            }
         }
         _loc14_ = §§pop();
         if(_loc18_)
         {
            _loc15_ = param1.currentImprovements;
            while(true)
            {
               §§push(§§hasnext(_loc15_,_loc14_));
               if(_loc18_)
               {
                  if(§§pop())
                  {
                     _loc7_ = §§nextvalue(_loc14_,_loc15_);
                     if(!_loc19_)
                     {
                        var _loc16_:int = 0;
                        if(!_loc19_)
                        {
                           for each(_loc12_ in _loc3_)
                           {
                              if(!(_loc19_ && Boolean(_loc2_)))
                              {
                                 if(_loc7_.currentSlotId != _loc12_.configSlot.id)
                                 {
                                    continue;
                                 }
                                 if(!(_loc19_ && Boolean(param1)))
                                 {
                                    _loc12_.improvementVo = _loc7_;
                                    if(_loc18_)
                                    {
                                       addr015f:
                                       _loc12_.currentState = this.getCurrentImprovementState(_loc7_);
                                       if(_loc19_ && Boolean(_loc2_))
                                       {
                                          continue;
                                       }
                                    }
                                    addr017a:
                                    _loc12_.currentTime = this.timerProxy.currentTimeStamp;
                                    continue;
                                 }
                                 §§goto(addr015f);
                              }
                              §§goto(addr017a);
                           }
                        }
                     }
                     continue;
                  }
                  if(!(_loc19_ && Boolean(_loc2_)))
                  {
                     if(_loc18_ || Boolean(this))
                     {
                        addr01bc:
                        if(!_loc19_)
                        {
                           §§push(0);
                           if(_loc18_)
                           {
                              _loc14_ = §§pop();
                              if(!_loc19_)
                              {
                                 _loc15_ = param1.freeImprovementSlots;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc15_,_loc14_));
                                    if(_loc18_ || Boolean(param1))
                                    {
                                       if(§§pop())
                                       {
                                          _loc8_ = §§nextvalue(_loc14_,_loc15_);
                                          if(!_loc19_)
                                          {
                                             _loc16_ = 0;
                                             if(!(_loc19_ && Boolean(_loc3_)))
                                             {
                                                for each(_loc12_ in _loc3_)
                                                {
                                                   if(_loc18_ || Boolean(this))
                                                   {
                                                      if(_loc8_.id != _loc12_.configSlot.id)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc18_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   _loc12_.currentState = ImprovementSlotComponent.STATE_SLOT_FREE;
                                                }
                                             }
                                          }
                                          continue;
                                       }
                                       if(_loc18_)
                                       {
                                          if(!(_loc19_ && Boolean(this)))
                                          {
                                             addr0286:
                                             if(!(_loc19_ && Boolean(param1)))
                                             {
                                                §§push(int(_loc2_.indexOf(param1.configPlayfieldItemVo) + 1));
                                                if(!_loc19_)
                                                {
                                                   §§goto(addr02a9);
                                                }
                                                §§goto(addr02b3);
                                             }
                                             §§goto(addr02b1);
                                          }
                                          §§goto(addr03d0);
                                       }
                                       §§goto(addr03ce);
                                    }
                                    §§goto(addr03ca);
                                 }
                              }
                              §§goto(addr02c3);
                           }
                           §§goto(addr02b3);
                        }
                        §§goto(addr02b1);
                     }
                     §§goto(addr0286);
                  }
                  §§goto(addr03ce);
               }
               §§goto(addr03ca);
            }
         }
         §§goto(addr01bc);
      }
      
      private function getCurrentImprovementState(param1:ImprovementVo) : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(param1.expirationTime);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() <= this.timerProxy.currentTimeStamp);
               if(_loc3_ || Boolean(param1))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0087:
                           addr0069:
                           §§push(param1.config.lifetime == -1);
                           if(_loc3_ || _loc2_)
                           {
                              addr0086:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(ImprovementSlotComponent.STATE_SLOT_EXPIRED);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr00a4:
                                 return ImprovementSlotComponent.STATE_SLOT_ACTIVE;
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr00a4);
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0086);
            }
            §§goto(addr0069);
         }
         §§goto(addr00a4);
      }
      
      private function get playerGoodStockProxy() : PlayerGoodsStockProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._pGSP);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     addr003a:
                     this._pGSP = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                  }
               }
               return this._pGSP;
            }
         }
         §§goto(addr003a);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._gCP);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr0043:
                     this._gCP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._gCP;
            }
         }
         §§goto(addr0043);
      }
      
      private function get timerProxy() : TimerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._timP);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr0042:
                     this._timP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  }
               }
               return this._timP;
            }
         }
         §§goto(addr0042);
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._pResP);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     this._pResP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               addr004d:
               return this._pResP;
            }
         }
         §§goto(addr004d);
      }
   }
}

