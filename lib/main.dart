import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Tasks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Flutter Tasks'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(milliseconds: 800),
          child: ListView(
            children: [
              Task('Aprender Flutter',
                  'data:image/jpeg;base64,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', 3),
              Task('Voltar com os projetos em RN',
                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQUExMUFBQWFhYYGSIcGhkZGB4fIhgiGhkhFxgcFxgiJSoiHB8pJBkcJTQjJystMDAwGCI2OzYvOiovMC0BCwsLDw4PHBERHC8nIScvLy8vMi0vLzEvMTgxOC8vLy8vLy8vLy8vLy8vOC8vLy8vLy8vLy8vMS8vLy8vLy8xL//AABEIAKgBKwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAABQEDBAIGB//EAEAQAAICAQMDAwIEAwQIBQUAAAECAxESAAQhEyIxBQZBMlEUI2FxQlLRM4GR8BYkQ2KhscHxB1NykuEVFzREk//EABgBAQEBAQEAAAAAAAAAAAAAAAABAgME/8QAKREAAgIBAwMEAgIDAAAAAAAAAAECESEDEjETQVEiYXGhgeHB8CMyQv/aAAwDAQACEQMRAD8A+awbcuSBXAs38VoG1fjtPIsftx/Uf465VyMq+QVP9+rH3bEVxyCDx5sAEn9aUah2j0tvquzv0/YPNII0HdRPN8BRZugT8fAOs8CFyAvk61+i7iSOZXiiEsgvFSrt5FEhUIYmif058a5h20odSsD2ScF6chsqe4IPqbHweSRXOhzjt3LdwZ2iYKGIIB8H7/5/6a2ReibhljdYXKyfQ3FGgxJu+BUbmzQ7G+x1W8EzBF6MndQQCN+/AHhPOVBjdXp3tfXtzGm3WHbstJ0ssJbnIM3arKQRQnfiOnBF5cAAJ7b9IsX29ujX+rycsUHbXcuWQ58V035PHY3PGuW9DmodtuZjD0gGzDhc+RWOJXnIMeOTQ00j9zbhbaWBWQ5xsWWXvtZqheRmNhXndiv1kCi3ArJF7onVzIBHl1BIO1hgRH0aSmBCmPsN2aAIIbu0Mi07CXqiHpt1SQoSuSWAK197BBB8Ub8a2z+3NwrFTFZGF0w7TKqMob/+qAn6QWqzwTbD6ruGkEyxpYmVjKyuwU9MQiOTcSMSIyPIZ/JuxrZu/Wt30txCYo0jV1hcIG7GTCNY0/MKuR+GTuIcjnkB9AKt56FuIjMGjP5JIkIIIWiBfBuu5ea4yF1rNBsZHUskbMosWBf0rmw/cLzpzP6zu+nuY/w+AndutjFMKebDIUWIDMQhAYEgucaDVrjceq7iBp4X28UTSM2UfSZemXTouIVVgACor+IccaAwy+ibheplC46Yt/Bx4YmyD5ARiQOQFJNUddT+g7lAxeF1CrkxNCgQSL58kKSB5IBNVppvvcO9ZJ0eJ0UoBJ27hTH2MmbuXyJKt/tS4NLxxrHuPVtxFJuS6Ir7hB1AQ3AaMgdgfG8XupA2Jo0CNAKtztnjIDqVJVWAPyrgMp/Ygg/36q0wk2O4kthtmUJGpbCFlGIqNZCPkseSw8nI+Aari9J3DZYwTHFMz+W3Ck0GojkE+K88/Y6Ax6NXR7SRjSxyMeeFRieACTQHwGUn7Bh9xoj2crY4xSNmCUqNjmB5ZKHcB8kWBoCnRqUQnwCfngXxdX+1kD+8auGylONRSnIkLUbdxW8lTjuIo2ByKN6Ao0asO3fHPB8LrLE43dVlVXYPH6H7a0R+lTlY3EMhSRsUbE0zCgQD/f8A8D9jQGPRrQ2wlHPSkIywyCMVLBsMVcDFjlxwTZ1L+nyBMyhrqdLH+MPRYKYvrBIBqxzRHnQGbRrRPsJUL3G1I+DMASoYHHHMWt38XzeqpYmVirKysDRVlIYH7FTyDyP8dAcaNXtsZgWBhlBWsgY3tcjS5CrFngX5PjV249JmjMwkjaMwgFw/FZOEWv5rJ4r+VvsdQGLRq38M91g91lWJ8fzePp/XxqPw78dj8ix2nkDyRx4FjnxyNZ3LyWmV6NWLt3NUjmxkKU8j+Yccj9fGuYo2Y0qlj5pQT/fQ1bQpnOjVq7ZzVI5sWKUmx9xxyORyPvrho2ABKsAbokEA1waPzXzqbkKZzo1bJtnVUdlIV8sSf4sKyIHmu4C/B5rwaF2shCkRyEOcUIRiHP8AKhrubg8CzrZCrXWrhsJj4hlPdjxG31XWPj6r4x83qrBhYK0QSCGJBBBogj4o8f3aA5Pz+/8AXUak/P7/ANdRoDV6fv2hMjL5eJ47uivUXEkEfIvT/be9pAIEMefTVUIzWpcU6QzUxtdjzkWsmxjxXn9hMEYk39NDHzeSn/kDrtN5yhpgi/wjxdk/8mr9tDtHSi0m5V+B+/vIYJGkJIMQSUCVl8LItQVl0wOqe7ksALHm+B7umklU9LIs/CI3lnbcDFQyuvd+LZaKteIBvI6TJvCvT4YKKr4sAMpr97H/ALdZI3YOGQtkGBUj6srtSK5yuvHzqMk4wUU4yt98D/1T12aXalTt+nD1DTqKjFzPMEspyVaRhedcfTdnSNZ3KKgFqxocHk2GoHwT3Lx/vD7jTnYetxRpGHhfrRoYg4xBjGUrZx2LWQGa6PBMamwfFfqvr/VRkHVQdYyIMhjyqA5gV35Rl7HGUjfuealK6r8mYycbp8qjJL6gRB+GZCGjdqbMriWZM1kiqnIMdCyK/WhTXb+4yjS7hdtXU3KSljKSiyIWlAxx5ss5q7que2yjkaMxFiXO4aYk39OBWyxPkuXP38A35GrvSt8kX1oXqSOQDiiYsxi1jwRIf2IHnXWPucpNpWlYx33vJ5EdKxVkdR+YDQdI0BGKopx6NjtH1H7azereqD8RK8u3VZXkSSnkY4HLquAvFq4YDE8qOAb1d6l7hEiSR4tUisCTiLJWNUZxzZXpnkknuHOup/cREm6eNWA3E6TMrUA6ASGWF/NozS1Y8qnI+BWknhkhKUllUbN576WSJx0grsCiASDAKY542LAKoc/6yaXEDgG/IKT1P1iGYH8lQTEkSsZi2PTxUMOFyYquJBv6r416Df8AvCKQ7gmOSpY1UeFoqZCC7K1sq9X6TkGCgYr243+s+7YjJuFEUzZZgM9KZAxnxjmUixCBuFKr5HSXgcY5ZsR773WJS5MYAkh6L1LTMeqJg5dVALAqBytkXZJN60bz3j1aXoKqCOSNlSTH+0ZHJDKoxxMQqwxomyTzrZN7yR+vnHIeosiimAOLyO8SGQUyqgcChYNG1PFYfcfr0O6xuF0widUClQI2bDCjyWiXFuO36uAOboLU94FenIduuJyRrk7JnC7cPYZCAAIIjgORnYYGjrpfe8idHqQjFYwuJZVSUAIgOJjPaegAeW5Hay4imO198wq0TGCYhAe3NcVDdC4kUUDFUB+q/r8HWP0j3gsbbZ5RPIYYelXU7eJQ4Kix9SjAg2OFNGq0bAp2HqI25jc7cEPEyn8xh1gZ8gwPdhi0QSh5CG+Tem2395Ss6hduHdi6/UGdhKScIyUNAM1gMJPsAASNKfxkD9BJA6xRiZmwrItIWeNI/ICgrGLP8z8Dg6UwSshVlYqymwymiCPkH41M0BtvfWPxHT67SpHcrAoA+bSTGVjizIrUXosD/COOeOE9ajQRRhWkSCUyoS/TYhgtq6DMDuQEEE8WPnjV6f7hVIoYpEaVYw6mNm/LdW7ktfIKsB4/hyHF6Zf6ZR9g6BARjivacRTrG4byJFV1HAF4DuHFcnOS4X2Wk+5zt/f0kYBSBQhL/U5IOcvXkpsQL7/scQykg/Kfeeuibq9SMsJJI5ARJTKYo+lQZUANoa4UVwQOK1ub3RbKT1QF3BlVRjiQyoCGj8ZBkLCj5kY2D3aU7r1AHcmeMOgzDKC5LCq8uSTZq+SavyavWlNvlBod7j3dLDMxMAibqtK0buTTvLDuDYofMAriwJD9uV0vuZWnjnMa5o8LIxcMUWA3iFURowNA+FrGgR51fF7mZXZ6Zg256zgt9acBYmPzQX544HHGtW791q0MkISQ5qVLuwLOegIQ8n3bJQ3k+BzfOpuljH2KRf697sISTbRxyInT6YMjASLcXTbOw5IIqgGU/rRoKN76yZzuiYjUyo0gDk4tHIO8EjhD1CuPwZBzxrB1EZJnlaRpyydP5BHd1TIT5oBAAD5P2GrvTN8iRbiN+oesgUBccQVdZFZgfJBWuPh21v5ITvvW8w4K4l6oh6OS50zEAB/7S6ofSP1uU9xsplPHeRXcPyyilVAyB4AI4FHtHOtO09WhjTdxpHKEnjCKMxYIjZSXkBU45uWxogigRdML9/7oJM7QtNG0kYVbZa2/5qyFIcQPy6UqPBo+PN8+hp1VYN9WXNmWT3SxbIKopgayFWDdCgOLCcGz+WOTrNsN/HDzCWc2t5ALQRxJVqzeSq2D9teqPvyLIkbcraYilQ9MWD0lv6oj4o0OB2Hm0nqnqke7wEkvQ6d45K72rRxIEXpqSArQu3P/AJ33vRaEEqSpePJXqybtvJXH7qxUKI4wFGJp6u1CkcAV9APNnjydUb33K0lcqtVlyKJACg8AEfPknljp/wCn+8445Iy8cjiIBEKtXaE26EAcdrHbu1Hx1rIJBGtEHv5AEHQakRVUgqTHipBMY488CrHF/totDSjLclkq19RdzzK+rxlIEfb9QRPI5ymYB+qoDCgAVFojCm8qfOXF+z9yFIoYjEG6YZS5emZZEkRlRguUf9szcl6IFAAkFRupQzuwFBmZgKArJiaAHAq/A41VrrZyY92nud42hKqcY+t2NIWyE4IbJmBBYA8MVPIFj4092v8A4mbhFxEUbCybaye5i3LAqD5+FH7a8LrrROhRB+f3/rqNSfn9/wCuo1QXbNwrgt4H6X+n+TolmtET4W/gC+TR/wAK1UPB1GhtaklDah16d6jAqwicFun1AAyhlHUxKtRPNFSMa/ivmq1q2vrG2SaBxEqrHMjkrGAQBJKXN8saDRFVJP8AZ18WVntzeLDuYJHNIrjM1faTT2PkUTY0z2TbTowRSfhy8fWVmqcCRsD+HaRhRMRarqmBC8Bcta3OqOHTV3kz+iepbeIbdJYo5FUy9ZzCjFrAG3YMwzKqe4pYsWCD4062vqXp7OoaOJPzmbjbIEx6bf2mdkiwCqKVFkAr86t3W+9N6qzgRyN+KDkFZv7IzOHyj4UgR9Nh8k8FTTZJN7+D/CHFYvxGfJR5qH5nAiR1po+nXLMGyv7AHJ0GMfrHp4xJgVqK5D8LGOoQYi0o57EISUdEcfm3X2z7b1XZYAywKzZwsypBGuWKQjcDLwqEpKQiYWX5sMa84CmHg5/f48/v9v00z9Gm2qog3EYctuAHNyZJDiuRTEgXd/DGroaGpRqsl2+3WzbcCUL2K8VxxxBEkRTc9rfaxAAoUDZ8edNd/wCubJ4pBiJJRAI42O2jVclVsGRf9muZsr4Irt5bRHD6c7lAIkLTQhcZJ3sF0WRUyVAikFiXJauRx2nUSp6YMgelY+vE7irrs/D35F1nn8XjoZON963s5TvJHTKSZD0wdtEMGMTBQGHIZZCpL3yAODWvO+s7lXkUqcgsUSFqIzMcKRs1HnypHPwBp5I3p7LOaSPs7AvWJBWWUARoxos0YhOTMQpN41kBk9yxbNnY7ZljRUtVUyuZSZKAt1XpuEIJux2/cnQCpNynGS5Uqj7VQ/v1s9u+pJAXL3yBVC7o9ykWPqB/YEAm616eSX0tgEZosEVwgUbgEB5HZGyIJMoXpWpBFsaIAIOPYzenyOrTCFE6EQKINwpDhFWYkixkCDjV5A2Tdk2MnF2jctRyq+x5beSoRCEq1hVXpAveCxN0TmaI7zRPHHGsuY55HHn9P316j0/fxBdr1XRgu3xKk5BG/FO8oZACVLIynwMgAL+3Ppu8VZvTmMqjp7eRSxkH5RJ3BiVnvsIDx8EjGx40lFJJ3yZrB5u9GmXpU6MUSYR4pG4jL5hS7NkvWKdxXlvH+7fF63enS7PKNZY4yMJCz5TAGTqyCNSeaj6eBvG7xs/VrlKVdmKPP6Netil9PjMLARset3A9ZqjJkByBADBfyqarYX2jnVG3Gw6aBhH1O/Il58cvzOmCmNmH+y5yDVd85az1fZijzI0a9Lu9okm6achPwpe8roYhcR2AiUAsALqxdkEXdPrM+16bpt1iGMwZTUuTK0aXgzcEBw4pq7eQLN6q1LaSX6+fcUefyH31Omku8L7fcFmUNJukk6YNUTHP1WWO7C28a3+iizjwr11IGjRo0AaNGjQBo0aNAGjRo1AGjRo0Aa61zrrVBB+f3/rqNSfn9/66jQEjwdRqR4Oo0Aw9vtGNzB1ghiLgP1ACuJNMWvgAA3fx54rTTY7HatDt1fATDrCUjcxjqOqEwrlyFVyABKLXirthpd7a2kU24jilzxex2EAlsSUFn7kAfuQNOdv7SRokfOYFgxw6a5OQszdGIXzOvQAdSODIOPGQG7c+n+mrKsucbId2AUSePDpGZ0PaO4KqhHJAClWFN3duDbembXpxsGjWcyEFZtxA8MXeUxl7g0i4fmZKCCaH3Gt3qfsqIFikrIG3DRRqQStmSWGEZnj640DdxID2QOC3kt/tESeSJZLVGKZkAWV4YjkCsga55FHQqTbpFnrHSO5lwVUiy7QjKwAxHKlC60TbUpYLlj8a42MELTxI8hWFnUO/8qkgMbIFfuRQ8669L2Cy7iKHqUrsFzFfIugLqz9I58ka9LvvaUKRyTFpY0jERKMO7ujgMokPKpJc7HEkfSaWgaGm6Ti0v5OfUfTdj0ZHyRXSJKij3MTW6xxl0JHLsxaQZoG5Rrqu6v1DYbGt5It9rt0Y4txCQUC5RtbEEhz24KGZK5FkWeo+14EXdyZzosMrqqdIscExbJnAxUOGODMQDjfdyB23tRG3G5ijj3ARHjEbstgK+4SNnDAgMOmxYE2CoYmqBAwVS7HavPuQnRSHFOkx3UJ8zJmVDGw3Tz4+pcCDeYGtO79H9NxkZJnJCCkWeEkEozMxLlMgGwXEWf0s8c732fAsUkq7iQhYRIF6RYglZH/NwBCp+WFyNCyeeACp2Pt8ETLOzRSpiEUYMCX28u4UuQfpxiA4s/mfpWgI9J9LhPXWaWOxCHjZZkCBmUti5PczDhSqKxDWD5B1bu12liQR0g2qOEXcrby/ko6t2lkZcpCQVtsCRQ02f2Ihal3GOLd4lCqTGHdWliAJyVhGWS/I+fFpjsI7oJ2/gOtlZ+vpdXPz/wCb+TXj4886Abbj0nZwvgwDO0L0r7qNe7oxSRsWoCJmZ5FCv/5YPN80elenbNoomndFIgYlV3EQZpOoSuVAsLWu1hYur4rXk2JPJN/vqNAezl9L2Uc0Igk6xJkFvJC0cjdFzECgbJamCL3KFb7m+V3oo2rDZmZYitzJL+YkbWVDQNL/ABEXYzPAJ5PFa87WjQHsdl6XsjEmTIGZgzXuYsu1NwXiTxiAwhGbELJkpBHGuW9P2BZIw4KrPMrSjcR5SKqhtuArUuLntEgIUHKyMhXkNGgGvqfpyxsZowDB1iiB3RmbBUkcEoWRlGYXJSRz99XbeLbSpZxicSEkZBQVeQkKpP8AKtDgD4sjnSTRqwkou2rKnRvlWFNwP44hRIsHygLC1NEhiRwa4q/nW7fbPbCNyjqSC7KRItiwmCFfLA91cmuSeSQEWjWlNJNUs/Qsbelxbd42WVum4bLO67aArngnyaAJNaq9SSJZIgoXEKMwHDf7Rrt18nGvHNVpdo0c/TVIXg9E0Oz4YEHM2AWXs/Jc0wskDLHi7yr4q6drt9sSY3YKWSNlfqBgpwDSAvwq8kgrRI5HJHKPRqvUuSe1FseeoJtmz6QVcVmI/MC2ysnTq7yHcwVRRYDzwdXrFtiQyYAOKIdl/KpgMjG7AsCL+Q1cgXevOaNFqVJtpZr+oWbPSYoWep3ZExblVB5CMVu2WuQP3NDi7HsfTtt6dht76LP0772VczjH1FmGVK1iSi54LHEEIL8Fo15Z6bn3aInR9Ai23pgEWPRY9xTJx39rZJLm3mwMWkod60DRvykX4YbqUHmDqOqGzQUvSNdg0F+SfHPnSrRrWlHZK7v5LY23DQR4YokhWQBrYEOkZD81x354EixUZq+SVwe/FD+4aq1OusnbsywPz+/9dRqT8/v/AF1GoCR4Oo1I8HUaAYeibCOZ5FlcoiwySFgMqwWxa/xD9OP3GnP/ANv5LdBJEZQawxIDU8qrUh48beRj/KFH615rbAlgobHLtJv4PBB+9/bxq+SV+mpM0htmpM2IGQ/Mbk1bZc15DG7s6G4wk1u7DuH28YXjMbtHNHLKkkqixH0dsu4bBVAYOAzpWRyKcY/Fx9iuOOulgFiOm/EYYrmPu3b/AGfmzV/fJs/SNw0UcsU+OYaSS5XQx4STjqvV5ACB2zFsCSAPk3xegbuGVJJWIjDK5lDdRTlOEFBuHcuwemrzlwdKMCX1P0wxTtAWDVj3FSoIeNZRamyOHAI+41jk2gVwvYDwA1cC/wC4Gudei3Pt/c7maVzJEztKy27Ys4jlXb9TEKQqBii+bH2IF6xbn21KkTyFoSgQOKdrkQiI5xgqLX/WI/qxPJ44Ohq1tqs+f0am9txM+4WNijx7xdrGjJY72eNWeQfTZjJ4FDkc2K1bf2IGUsZAwaN2hAiYM7KmXerf2fcQKPLfBGvPmWZhJIZHpuHbMjOvAbnuPjzpp6RsNxuEnk/EuAQ9hpZC07RRB8SvOYAZRbeA/API0I01yuSzf+yjHm3VjYRp1GOI7VIlCtwxBJkg6fDHl055oKtj6cjJuLFtHF1EwZSBU0cbhlAJPEl8EVj8/D6b27viXieVH6mPUd3YkKOpInUkkTqJHlA/HFug45UlefQdxAsjyM0DrC8gUEh2VSqnxQCkP9+eeDzoMUMNp7OgabATMYwsTE9KmLTQNOoU8gLUbHM+O1eTba5l9pdJWM05FQO4CR5EGKRFkRlDngGQGru7sLjz3s/bO6EgjbdCNBcWSTyEWpkuFFpbIML9vCceSeNUj236gxQrI0jqwi7JnYwkinRiawVaAbG15Wr+BCyL2iqSIk0hcFbkMDL/AKuAqOzSWHzWpAFUBWdqAqwSjk9PJj2zxqzNJE7uoBYgxSyI7ADwuKX+lNzWol3U0eCruWICDHpTuQgJIw4IwPbZQfBXWY7l+Dm1hcAQxFLz2j/d7jx47j99Aen2PszqQxMJsXcqWJTtRZIo5EFllDE9aMWD5NAE0TnHtBgYw+4iUOzKp55aIOJgMio7XQJbFQeopseNI4/UJlChZplCilCyuMQfIQA9oPyB512fU5vy6ldTGCEKHAjM5OclpizHyxJJ4s8aAo3UJR3Q+UZlNiuVYqbHxyPGq9BOjQBo0aNQBo0aNAGjRo0AaNGjQBo0aNAGjRo1QGjRo1AGutc661QQfn9/66jUn5/f+uo0BI8HUakeDqNAdROVNg0R86HkJ8n7n/Hz/wAhqB8/5+RqNC7nVXg27L1HcIVWKRloUACKoF3o3wRckhIPBzYGwa1fu/Ud06Mkk0hQvZDSCi2Wdjn4LA2OBY8Aazek7aSSaOOJDJI5xVfuWBXn9Bdknigb41pj9K3UjIPw8pLSYC4mAzahgSRQoKOD4AN/Oh0itPb6r3X+KL29X3hLfnvRksm1FsGVcvvVhSR4Jomzzqo+tzpBLtiylXxUksbATphVUlumq/kxgki6Xk8ccz7PcgnqRPGM8Gdo2VEZmU97Y0OQp/v/AF11L6Lubkk6BdY5jG5VCyZoTkCAOV7TZquf10E+n/xf5Mu92LxTtt7t8glKfqLUAB9wcgPsb1uhG826bhUcxIpqXGaKg2JJCsGOT4rysZLUoscDRud3uZleUwZI7I7Ou27WKEohyC1RJKkXTUAbrWz1OXfyxzmaAtGMA4eD+y7CqlMhkpxBtuatb/hOhyO9zt/UnXcq8Zc4qszB4yyLGzTiMLG+N2rOUCl6F8BuTc7b1VWlMgkyKEOXeFiylpZGVbY5G1nYolsMTY4GsM/q+6hadZAY2mYyOskWJDNY6iAgFTyefHA+VBEze49y75sFJsM2MYGVpItng0Ss8n6dwocDQqTfB16TvN/J1TBI7VZfujHMhdzQcgszVIey2+oDzRYbfb+rtiyNKbQBWE8NMt2KbOmbts+X4F/Glm09QIDnaxrBgBI4aTqFsLRSuSCseq1j5z/TTE+4/Ujj2Px38bfzwRme3m7PPj7VwNKMOSXcSerbHcxrA24R1UxhIsivCKAwSgSUoSA4tR7/ABrHtYQ7BSypYY5MaHahcAn7nHEfqw16CXe7qVow0K7iSTbNgEiLOFl/KErhQe8BLB8DNWPJ0mX0jcEqBt5yWBKjpPbAVZUVyBY5H8w+41GaNH+j856WCqwlRWU9SMfXGsmJyYYsAw4NXRIsaybz0+WIKZEwyvEFlyNEqSUByAsEWQAa4059N3m/QR9KGUiRFwH4csJFjjRVK9veAqIbHmhdgm6d4d7NHFG0MuDOzpjAw6jG2dgQvcaLE1+pPixzW+81RcGMejTGJJVCurhiFR1ZwFYIbjBy8kcAEi+a1aPbW6pT0GpvByT5BYE93atK3c1DtIu+NdQb3dwRxsFeNVZ1SQxVRcFZFWQj7gnG+GQngrwx2+/9QlTrqhdRIabo2XMpkLxx0tOn9pYH0g+QAKj6navsYFb+3twMQUXNnaMR9RM8kCsbXL6acHLxXcaUqTG49AnjjlkkTARgHllJbJ0jGIBJI/MBzHb+t6YIN8oWUQMLnfH/AFeyr4rHKgBWwGUBSvzifkHVHqG93RglEioq9QRuvTxeM8TqnIyVCYi3myUa/PL/ACWuPcYF2z9OeVSyAMeokYWxbNLYUUTwLFWaHPng1VPtXRgjgBiAR3pRDgMp6gbDEgg5ZV9z51p9P9WkhFIE+tZLKKSGjNoQT9jfH+8fvrHuZi+OXOKKg+O1FwUcfoPOtq7zwBrL7anAkoI5jlaNljdWNoASVANt5+kDIVyBrDv/AE2WFxHKhRiLAtTYJK8MpIPII8+Qdaj7g3GRcMqsWZyVRRbOoV38VkaBv786zb71F5ZBI4WxXCriODl4Hzyf+wA1lb7zVB0XyegblS4MXKKWYCSM0FLByKc5FTG4IWyCvIHGob0SYGUMI0aJQ7q00QIBcIBWX1WfpNEcfLKG2bn3buGMtdNFky7Ai0uZkLYmvqPWe2+cr4oVl3Hr0zm2wI6XSxwXHDMSUFPghgGB+K4ocaiep3SLgw7iELhTK2SBu3+HL+FvswrkfrqrRrRvd11On2KoSJY+0fVjdu/3ZiSSf2HxroZGMftfcMsRVAXkJCx9SMNQSNwSCwxJEyUhp+bqtZX9E3IRpDA+KhSSKJp1VlIUHJuHW6BxyF0dMNt7w3KYlWjtRVmNbb+zpnP8TDoRcn+Tm7NxD7t3KdAxNgYo2QE02XUk6shNigCVUBeaCAWdaBmPt7cdoxXMmUMvUjGHQKCTNy+C0X8Eg8X4IJ7/ANF90EZzGFIfHFnRSBjKzO9sBGi9B+58QfgnVb+4JijR/l02eREahm61dUlqu2xW/wD0jWmT3buWvIxNkSXuJfzARIMZOO5AJpAB8ZfoKYBg33o24hz6sLJgAWJqhbBByDROTKKFkXzxzrHp5/pZuG6YmYTRpKJemyjFmEjy01D6S0htfFBR4UUk5PPPP2Ff8PjQHJ+f3/rqNSfn9/66jQEjwdRqR4Oo0BI+f8/I1GpHz/n5Go1AX7Cdo5YpEALpIrqCLBZGDKCPkWBppH7geJFjjhij6bLiQXbFUn/ErHy5BHU5v6q4vSeCQqysP4SD/gfF/wDDWlN+QACCSGB5bg0+fivPxf20R1hHTkvVKn8WbZvX2O3l26QRRrI1kpnY/MSauWORyQcsCaNDVsnuCSOaRjBEr/iBOQC5CyqSJK7yCr5MCtkU3bWk0bEuC0jIbH5nJKV4YVzY88fbWv1zcCXcbiVQ+LzO/IogM5Iy84nn/HVOdW8DuT31ubNrGGVgylc1CsAmVorhXDFAxU8WzfetLd96+8xlyiUqwTgvM3TMJdkZXL5D+1fi65+4vWR92zLJSNifqNkgFqVSxqh9PF+STrr031mSBGRCRnLG7dxAcRCQGN1H1I3V5F/w+DfA3qRjF+l2vig9a9RbcTGUxqjBQCFB+Oc5GJJZjl9R5Ix+2qG3knNn4F2oNCgAeRxf3/XXpN170Mv4gskrCVAhuRKTukKlikKFsTK2IJF1TZA0uj1b3oWefGGUo4Yo0kht1kabDrDDvhrc2sfFYL3G9DMZyjhNr4PJbOYxl+wMGjKsrZcqas8EEcgc/pppL7nmLKxVbtX5LkEq2QIUtSglf4ft+gplP70kPV6sUh6ySAAykWssjvGMimZRMyFwZQcT8Ggv9w+4xuiDJExxjdUHUUCJ3xpkwjUlVw4Ry31eRXNUmuDnLTjJ20ZW3svTVun2ttjtcue9Y2VywA8FVaNSeQRz8mm3+lO5UwGSANUXAYy4SqFWMM0WeBWogCKo8mhxWrb/APiBg8b9ByUB/wD2OBZhtEUxkJEfw9Y0SMzRBHOb073ZJt22zyRTExwBEymKh16olR0V42FMF6ZPcCACpUqNQ0Uj3YQiRrBGY+nGsgYuOqYo0RTasMAGiBAWrHB1yvvGYydR0jYkgsBmobFZE5pvB6zWpsHjjSjf7/qLEuJXp5j68h3ytL2rQwAyqhd1fzWsegH03ul3SJHhhZI2vDvEbKC5VDCGwxHUIFC6A582en+6Hijjj6UT4ALk2dlVMpQcMApU7hyGAu8T8codGgHr+53aXrPDCzdZpRefaXjSJwO/xUaEE2VZbB1l9V9aafq5IqmSRJGKlv8AZQ9CNQGJNAFiSSSS36crNGgDRo0aANGjRqANGjRqgNGjRoA0aNGgDRo0aANda511oCD8/v8A11GpPz+/9dRoCR4Oo1I8HUaAkfP+fkajUj5/z8jUaAkfOo1I+dRoCV8j+l/8PnWmfdAhwtgM+XIHHmx8/cf4azL/AJ/w1GhuM5RTS7jPazqNpuELrk7x4JXdaks7XXC1Q88n40y9L9b2sKTxrCzq8mStLGjuUxACMQ6hGVgWBAcW3jjnzWt+43KN1CQL5C8Hxj21/LR8/pqGtOEZJ3JJ+4333ugSR7iMKydZALWOIWVmkZQwBFL0nSPIcjp8A+dE/uRMZ1QygTbeONmMMQJeLC2KhyMXCtZBtSwIDVrz26cFjiAF+KFcfF/rpt7w323n3Dy7cYo7OxBUhsjKzFmY/VkCGA4xBxrts0w0lJpOxjB7k2yg3E0jmGOMtJt4zfTzD0izCg+a2b46Q4a+F3rfqe3nEfZIpSAoMEjjUyCunaZN2AXkQ1k1SrzrGJYuLpu1Qe1uKyyq/Hkas9BNfiC2AH4aYWzAEM0TLGEsgklqWluwxBFHQ1OCjVST+BnJ7hgXuhiZZDG4to4qR3SBAUFtajoSHIgG5fHnVfo3rsETQPKrsY43jYCJGBD7hp8oyZEwf8wrdED7MCQOPb82zjcmepg0SHvRwqPmDKhxV2bsHDhfJPKnuGza+sbRCmMUS/lvGzNCzDv2sahpByXPWEoJAvFj8EaHM87u9yrRwKMgY1YNYQDukZ1xZQC3DDlubsDitZtem9P9U26Da28TFEmSRTDIwTrxkRviVpiGADFbJDcX8dem7zZhIROY3KGc4COUIDKE6TSdjBgCjDhWIDR9pxNAeX0a9HvpdjIkSoRCes2bJHI5WMtIyk5KrNQMYChm4HIUg2ekbjZKkJmAZwUEidNzwsszOxYDEhkeFaBvsPiuQPOaNeh9O9ViaONdx01Cbjq9HB+kVaIIyqEDYdy5EVzfhuRrH6xLtz1ehjRntPyirdPp1w3ChMv4MAf4uPpACrRo0agDRqAdTqgNGjRoA0aNGgDRo0aANGjRoA11rnXWgIPz+/8AXUak/P7/ANdRoCR4Oo1I8HUaAkfP+fkajUj5/wA/I1GgJX51GpHzqNASv+f8NRqV/wA/4ajQEr51GpXzqNASlWL8Xz/117Ebb0r85vhcsE6zCwss6qyszAs7KsBx7vrNLza+OWrF8D5/669L6n6Bt4BNnLI5UWipLFbBtxJChJxYV01SQgC+74BFAbW9K9LBpdyr9+RZnZPy6Zemo/iYMqkHyVcfY6V7WTb5NEojQPtSpldiwaZ9ur2S1iLGXJQVr9dal9GimDS9sY/CxyLhIip1BH+cJLDstOCMaFk1kvF6dx7e2kbMivJOWgd4yJokDMrR00ZxIOSs5CtdBDyx+kDye2ws53XxX/Y6Z+1jturKNyaiaIqD85GaIij5HaGsryFyrnjWn2z7dSaVUnkVFaJJAUlQEB3CWQysO0WWQ4kCuRpx6b7b2hXbZNkSwdj1o16qkbfOrHZGnUnJU2x6Ldw5xGnK0lXAgm3PTh2ZAhfBpsksMtmShYvIrjRUnyAOdatptNh0oC70Sv5rCQ5qcGywi57g4UL2gFbJLXaxBsojNtAsaMrrOefEkqPN0o255HZtwB89T/e1d6R7d2kqQkzuHMaMy5x97PE74RdtqQU5yyu6oGrxKN8Nolljel7NREXaJC4LCppGD8zCiSy4p2Q4va3Zu+QKpNp6fk6qymixVmlcCTunEaOfCpS7clhRp7J5NXT+1NsA5j3WbMGEMeUYcuschAl/hxZ4WUAEeV5OQvNN6ftYJoAWMwO4ZGLPGYxGkyoWkCrZtWZsgwAxB5GsdJ+WLN2+2/prMzB0sufEpVRVhFxFHpkBbcLYJY5Cq0v3Ppivuep062ZKAyJl0wBGiORIB4Dhrb9CdKvUfS5IwzsoCdZoh3KeVUPQomxi68+Oa86INijbcuFHV/ExRhyRVSRykC67eUFkkiq8UbR02uJPjuGzRvUgijPTwllBQKwkYhSII2dlH0uOrmO4EUCKqqr9bmUS7gQ9JllkDxstdgyZkC+An1jIHxiPtrdsPbyMhaSWikpicI8fkTQRrhl9VrLMwN4npA2ADevd+2Nuke5brsXialUSI2IMcbr1bRCSxd14C4mMimIOtqPuLE/ul1O73BUqVL8FSCDwLojg8340r019Q9NjEs4gZjFDIIyZJIy73I0YeMAIGUhb/S+Wo6Zet+3YohuTG7yGNQyoJoslUrI2c1ot0VQGNACMx3G1vZDzGjXrR7e2jHdBZpQYOAS8TZdjMZKCi4wwC4g3zeVkDWjd+19mjlRuJSDQRs4aOQlIkvHujPSXtFEZ/UbFQHitGnXt70iOXL8SZYeY1TlU5kYqxbNTkFoEgV58i9P9t7Q2mMTSbhgXWyEnhIvph8lYx/SbIAI+PJ0oHhtGvXy+39vE8FSmVHilMjHAqAu2L9SOuUKvxRvlQLsldef38KiDaNQWR0cuBxYEzLG5H3NMt/IjXVBg0aNGgDXWuddaAg/P7/11GpPz+/8AXUaAkeDqNSPB1GgLtpBm2N1wT4vx8AfJ1aNpZUC/rZSwBP0gFe34Jsj/ALayj/P+OoB0O0JwUacbz57eBntvScniXJgXlEfahYjKTp8AGmb5xvnxel0qUzL9iRyK8GuR8ftqYUyIUGvJ+eKBJPH6DVku2x+plHNDzzwpvx4phoJx3rdCNJY57lGjWv8ABcnuAAYj5ug4S+BXkjWeZQrEZCgaLUaFeSR54/T7caGZaUoq5HGjTD1T0wxzyRKbRHVDIbwXIAgu+ICjknkDgHjjWj1X2+0CyvJLHihAUgSfnEp1Ki7KIxH1GlNij5ocxPqANejl9pOOtW42xMTmMguy5ygFjFHmq5NS/sSwAPmpn9oOpkX8RtmKcUjs1uFldo+F7WA27/VQ5X78AebrRiNM/RfRm3HUxdEKYgB8u9nV2VVxU1/ZNy1Dxzp3B7BmbH86AXQ5MlhuSUZQlqwx5utQHkSNGI+2m3rHoMm3wDPE7EEskT5NFSq5EqgWvDDnx2t9uV+1VCwEjFVprIFmwhKCufLYg/oTqApKj7aCNehg9rlxEyTRhXjRmL5Dpl4kkpiFqiZAAbPwDyQDg9S9HaFFdnRrdkIQk4MpIKu1Yhu0nG7rmtZWom6stMW1qdOIPbztGsvViClM2vO40xlYMwC830H4Wz9P3449X9F/DopaVTIZJEKANx08bIYgAjvB+PqH603q6vIoV3wBfA8D4F+aHxdD/Aa6adioQuxQGwhY4gnyQvgE/etM9j6L1Y4ikqmWRpVWIhgT0Y1kIDVjZDfJA7l581sPs6cdMNJAkjkVG0lNzjkarnHLmr4ViLrk5xWGxTPOVoxH20+X25YATcQyO0yRIEJKt1FyB6gFChdj4xbyaBD7dASaQzxOqozJ0mLdQoIi3NUAOsoIJBu68czfHyKYirUYj7a3em7ASrJTAOuGKm+epMkNngigXHyDyPNHUeq7AwOFLowIsMuVUHaNuCobho2+OaBHnW9yuiGIjQBr0W49sqDOqTq7xlaBVhnlBJMyjt4aorBJC0eTfhZ656Ydu2LSRSEA5dJ8sChxZW8UQfv5/wAdZU03SLRn3O7lkrqSySV46kjPV+ayJr/41RWvSL7OlLYiWE8lbtwM1r8uyg7jkK+/NXRrPD7fGIZ54wpgaYModh2hSylgtWuQyAsg8VqdSPkUxHiPtoA1cYwQmGTMVJdcT2kM3C8cjAKxPNWftxq9E9N/ESYZrGoALM2XAaRIhQUEklpVHiubPjXREMGjXp917KmF9N0clnVI7IkbEM6DHEDJkRmHwa4Jsag+zJVePqSRiF5Y41mUkrKZDVRdpNjkWVqwfIB1QeZ11p1B7ad4xKJogtMzA53Gi9a3ako//jScLZ+ngXw9b/w23bFjAYXiDMqtJJTHFipJGHHIP91alA8ORorRo1QFHRWjRoAo6K0aNAdROVII4Iv/AIiv+ugu13bXd3Z8nyf34H+GjRoXe/8AUHkY+Sx/ck/r/wBB/gNAkbINbZAghrNgjwQ3mxXnRo0I5t8mib1GdzbzzMSVJLSuSSllCST5WzR8izVXqZPVNw3UymmPUFSXIxzA4AfnuAFij8Ej5OjRoDhd9MOrUso6v9p3t+Zd31Oe+7Pm/qP3OrJfVdwzBnmmciqykc+AQLs88O4/Z2/mNmjQEz+pyGsVSGjf5CCKz4BbCsiASAT4yavJ0P6xuTV7jcGqr86TihQrnj/5P30aNAC+r7iq6sjDptEMmLYpIAHVMrxsACxRoV41irRo0Bpg386fRNKlChjIwoBQoAo/AAA+wA+w1zuN5K6qrySOqkkBmYgE+SAT50aNZ2qwEO8lQqVkkUrWNOwqsqqjxWb/APvb+Y3y+5kIKl5CrNmQWYhmPlyCaLH+Y86NGm1AmDdyoMUkkQXlSuwFgUGoGrri/OrP/qM9EdaaiwYjqP8AUtYt5+oYrR89q/YaNGm1Ah9/MSxMstsVLHqN3FOULc8laGJ/hoVWupfU9wwcNPMwf6wZHIehQyF0eAPP2H2GjRrWxAr2+8ljBEckqBvIR2UN/wCoAgH+/VUjs3LFm+OSTXJY1f6sT+7E/OjRrNIFrbyY1cspoULdjQAKgDngAOwr7Ow8E653m5klrqvJJQxGbM1D7Anxo0abUDZuPXd07s5nmDEV2u6gC7xUA8D9NZz6jPaN1pskXFD1GtBVFVN2ARxQ8jRo1VpxBxs908RZoyVJRksDnF1KOB9iQSLHPOo2m5kibOJ3jaiMkYqaPkWKP/YaNGqDbt/XdyjI3WkYpeHUZnEZYEZopNBxkaauL1lg30yBAksyhPoxkcYUGAwo9v1t4/nb7nRo0B2PU9wGz682Vg5dR74LEc3fl3/97fzG+H9QlJJaWZieSS7kknk2b50aNAf/2Q==', 5),
              Task('Por que react native é melhor do que flutter?',
                  'https://miro.medium.com/max/1024/1*xDi2csEAWxu95IEkaNdFUQ.png', 2),
              Task('RN > Flutter',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png', 3),
              Task('Hooks avançados',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png', 4),
              Task('Libs UI',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png', 1),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(Icons.remove_red_eye),),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(
      this.nome,
      this.foto,
      this.dificuldade,
      {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.blue
              ),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black26,
                        ),
                        width: 72,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                            widget.foto,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              child: Text(
                                widget.nome,
                                style: TextStyle(
                                    fontSize: 20,
                                    overflow: TextOverflow.ellipsis),
                              )),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 1) ? Colors.blue : Colors.blue[100]
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 2) ? Colors.blue : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 3) ? Colors.blue : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 4) ? Colors.blue : Colors.blue[100],
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: (widget.dificuldade >= 5) ? Colors.blue : Colors.blue[100],
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                              print(nivel);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_drop_up),
                                Text(
                                  'Up',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: (widget.dificuldade > 0) ? (nivel/widget.dificuldade) / 10 : 1,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'Nivel: $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
